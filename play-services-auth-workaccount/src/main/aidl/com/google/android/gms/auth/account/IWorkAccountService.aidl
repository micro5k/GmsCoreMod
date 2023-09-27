package com.google.android.gms.auth.account;

import android.accounts.Account;
import com.google.android.gms.dynamic.IObjectWrapper;

interface IWorkAccountService {

    interface AddAccountResult {
        Account getAccount();
        IObjectWrapper getStatus();
    }

    AddAccountResult addWorkAccount(IObjectWrapper googleApiClient, String token);

    IObjectWrapper removeWorkAccount(IObjectWrapper googleApiClient, IObjectWrapper account);

    void setWorkAuthenticatorEnabled(IObjectWrapper googleApiClient, boolean enabled);

    IObjectWrapper setWorkAuthenticatorEnabledWithResult(IObjectWrapper googleApiClient, boolean enabled);
}
