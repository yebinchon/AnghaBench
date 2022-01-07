; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_run_userhandling_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_run_userhandling_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32*, i32, i32*, i32*, i32 }

@USER_PRIV_USER = common dso_local global i32 0, align 4
@UF_SCRIPT = common dso_local global i32 0, align 4
@sTooLongName = common dso_local global i8* null, align 8
@sTestUserOldPass = common dso_local global i8* null, align 8
@NERR_Success = common dso_local global i64 0, align 8
@NERR_UserExists = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"We are on NT4, we have to delete the user with the too long username\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Deleting the user failed : %d\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"not enough permissions to add a user\0A\00", align 1
@NERR_BadUsername = common dso_local global i64 0, align 8
@NERR_PasswordTooShort = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Adding user with too long username returned 0x%08x\0A\00", align 1
@sTestUserName = common dso_local global i8* null, align 8
@sTooLongPassword = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Adding user with too long password returned 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Adding user with too long username/password returned 0x%08x\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Adding user with level 5 returned 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Insufficient permissions to add users. Skipping test.\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"User already exists, skipping test to not mess up the system\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Adding user failed with error 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Deleting the user failed.\0A\00", align 1
@NERR_UserNotFound = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"Deleting a nonexistent user returned 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_userhandling_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_userhandling_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_2__, align 8
  %3 = load i32, i32* @USER_PRIV_USER, align 4
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 6
  store i32 %3, i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 5
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 4
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @UF_SCRIPT, align 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 3
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** @sTooLongName, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** @sTestUserOldPass, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = ptrtoint %struct.TYPE_2__* %2 to i32
  %15 = call i64 @pNetUserAdd(i32* null, i32 1, i32 %14, i32* null)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @NERR_Success, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %0
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @NERR_UserExists, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19, %0
  %24 = call i32 @trace(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** @sTooLongName, align 8
  %26 = call i64 @pNetUserDel(i32* null, i8* %25)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @NERR_Success, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %56

33:                                               ; preds = %19
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %154

39:                                               ; preds = %33
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @NERR_BadUsername, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @NERR_PasswordTooShort, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi i1 [ true, %39 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i8*, i8** @sTestUserName, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** @sTooLongPassword, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = ptrtoint %struct.TYPE_2__* %2 to i32
  %62 = call i64 @pNetUserAdd(i32* null, i32 1, i32 %61, i32* null)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @NERR_PasswordTooShort, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %56
  %71 = phi i1 [ true, %56 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %1, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i8*, i8** @sTooLongName, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** @sTooLongPassword, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = ptrtoint %struct.TYPE_2__* %2 to i32
  %80 = call i64 @pNetUserAdd(i32* null, i32 1, i32 %79, i32* null)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* @NERR_BadUsername, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %70
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @NERR_PasswordTooShort, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %84, %70
  %89 = phi i1 [ true, %70 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %1, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  %93 = load i8*, i8** @sTestUserName, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** @sTestUserOldPass, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i8* %95, i8** %96, align 8
  %97 = ptrtoint %struct.TYPE_2__* %2 to i32
  %98 = call i64 @pNetUserAdd(i32* null, i32 5, i32 %97, i32* null)
  store i64 %98, i64* %1, align 8
  %99 = load i64, i64* %1, align 8
  %100 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %1, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %103)
  %105 = ptrtoint %struct.TYPE_2__* %2 to i32
  %106 = call i64 @pNetUserAdd(i32* null, i32 1, i32 %105, i32* null)
  store i64 %106, i64* %1, align 8
  %107 = load i64, i64* %1, align 8
  %108 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = call i32 @skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %154

112:                                              ; preds = %88
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @NERR_UserExists, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 @skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %154

118:                                              ; preds = %112
  %119 = load i64, i64* %1, align 8
  %120 = load i64, i64* @NERR_Success, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @NERR_PasswordTooShort, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @broken(i32 %126)
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %122, %118
  %130 = phi i1 [ true, %118 ], [ %128, %122 ]
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %1, align 8
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i64 %132)
  %134 = load i64, i64* %1, align 8
  %135 = load i64, i64* @NERR_Success, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %154

138:                                              ; preds = %129
  %139 = load i8*, i8** @sTestUserName, align 8
  %140 = call i64 @pNetUserDel(i32* null, i8* %139)
  store i64 %140, i64* %1, align 8
  %141 = load i64, i64* %1, align 8
  %142 = load i64, i64* @NERR_Success, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %146 = load i8*, i8** @sTestUserName, align 8
  %147 = call i64 @pNetUserDel(i32* null, i8* %146)
  store i64 %147, i64* %1, align 8
  %148 = load i64, i64* %1, align 8
  %149 = load i64, i64* @NERR_UserNotFound, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %1, align 8
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %138, %137, %116, %110, %37
  ret void
}

declare dso_local i64 @pNetUserAdd(i32*, i32, i32, i32*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @pNetUserDel(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
