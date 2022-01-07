; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_user.c_GetAccountFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_user.c_GetAccountFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UF_SCRIPT = common dso_local global i32 0, align 4
@UF_PASSWD_CANT_CHANGE = common dso_local global i32 0, align 4
@USER_CHANGE_PASSWORD = common dso_local global i32 0, align 4
@USER_ACCOUNT_DISABLED = common dso_local global i32 0, align 4
@UF_ACCOUNTDISABLE = common dso_local global i32 0, align 4
@USER_HOME_DIRECTORY_REQUIRED = common dso_local global i32 0, align 4
@UF_HOMEDIR_REQUIRED = common dso_local global i32 0, align 4
@USER_PASSWORD_NOT_REQUIRED = common dso_local global i32 0, align 4
@UF_PASSWD_NOTREQD = common dso_local global i32 0, align 4
@USER_ACCOUNT_AUTO_LOCKED = common dso_local global i32 0, align 4
@UF_LOCKOUT = common dso_local global i32 0, align 4
@USER_DONT_EXPIRE_PASSWORD = common dso_local global i32 0, align 4
@UF_DONT_EXPIRE_PASSWD = common dso_local global i32 0, align 4
@USER_TEMP_DUPLICATE_ACCOUNT = common dso_local global i32 0, align 4
@UF_TEMP_DUPLICATE_ACCOUNT = common dso_local global i32 0, align 4
@USER_NORMAL_ACCOUNT = common dso_local global i32 0, align 4
@UF_NORMAL_ACCOUNT = common dso_local global i32 0, align 4
@USER_INTERDOMAIN_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@UF_INTERDOMAIN_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@USER_WORKSTATION_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@UF_WORKSTATION_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@USER_SERVER_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@UF_SERVER_TRUST_ACCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @GetAccountFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetAccountFlags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* @UF_SCRIPT, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @GetAllowedWorldAce(i32* %12, %struct.TYPE_3__** %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @NT_SUCCESS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @UF_PASSWD_CANT_CHANGE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @USER_CHANGE_PASSWORD, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @UF_PASSWD_CANT_CHANGE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %24
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %11
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @USER_ACCOUNT_DISABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @UF_ACCOUNTDISABLE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @USER_HOME_DIRECTORY_REQUIRED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @UF_HOMEDIR_REQUIRED, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @USER_PASSWORD_NOT_REQUIRED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @UF_PASSWD_NOTREQD, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @USER_ACCOUNT_AUTO_LOCKED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @UF_LOCKOUT, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @USER_DONT_EXPIRE_PASSWORD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @UF_DONT_EXPIRE_PASSWD, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @USER_TEMP_DUPLICATE_ACCOUNT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @UF_TEMP_DUPLICATE_ACCOUNT, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %132

92:                                               ; preds = %83
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @USER_NORMAL_ACCOUNT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @UF_NORMAL_ACCOUNT, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %131

101:                                              ; preds = %92
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @USER_INTERDOMAIN_TRUST_ACCOUNT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @UF_INTERDOMAIN_TRUST_ACCOUNT, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %130

110:                                              ; preds = %101
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @USER_WORKSTATION_TRUST_ACCOUNT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @UF_WORKSTATION_TRUST_ACCOUNT, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %129

119:                                              ; preds = %110
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @USER_SERVER_TRUST_ACCOUNT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @UF_SERVER_TRUST_ACCOUNT, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %115
  br label %130

130:                                              ; preds = %129, %106
  br label %131

131:                                              ; preds = %130, %97
  br label %132

132:                                              ; preds = %131, %88
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @GetAllowedWorldAce(i32*, %struct.TYPE_3__**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
