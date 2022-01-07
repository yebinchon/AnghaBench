; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/credui/extr_credui.c_test_SspiPromptForCredentials.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/credui/extr_credui.c_test_SspiPromptForCredentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32*, i32* }

@test_SspiPromptForCredentials.targetW = internal constant [9 x i8] c"SspiTest\00", align 1
@test_SspiPromptForCredentials.basicW = internal constant [6 x i8] c"basic\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@ERROR_NO_SUCH_PACKAGE = common dso_local global i64 0, align 8
@winetest_interactive = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_CANCELLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"id not set\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@SEC_E_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"username not set\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"domain not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"creds not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SspiPromptForCredentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SspiPromptForCredentials() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 40, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPromptForCredentials.targetW, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SspiPromptForCredentials.basicW, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = call i64 @pSspiPromptForCredentialsW(i8* null, %struct.TYPE_3__* %3, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SspiPromptForCredentials.basicW, i64 0, i64 0), i32* null, i32** %4, i32* %8, i32 0)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = call i64 @pSspiPromptForCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPromptForCredentials.targetW, i64 0, i64 0), %struct.TYPE_3__* %3, i32 0, i8* null, i32* null, i32** %4, i32* %8, i32 0)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @ERROR_NO_SUCH_PACKAGE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* @winetest_interactive, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %0
  store i32* null, i32** %4, align 8
  store i32 -1, i32* %8, align 4
  %31 = call i64 @pSspiPromptForCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SspiPromptForCredentials.targetW, i64 0, i64 0), %struct.TYPE_3__* %3, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SspiPromptForCredentials.basicW, i64 0, i64 0), i32* null, i32** %4, i32* %8, i32 0)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @ERROR_CANCELLED, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ true, %30 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %47
  %60 = phi i1 [ true, %47 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i8* null, i8** %7, align 8
  store i8* null, i8** %5, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %6, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @pSspiEncodeAuthIdentityAsStrings(i32* %64, i8** %5, i8** %6, i8** %7)
  store i32 %65, i32* %2, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SEC_E_OK, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8*, i8** %6, align 8
  %77 = icmp eq i8* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @pSspiFreeAuthIdentity(i32* %84)
  br label %86

86:                                               ; preds = %59, %39
  br label %87

87:                                               ; preds = %86, %0
  ret void
}

declare dso_local i64 @pSspiPromptForCredentialsW(i8*, %struct.TYPE_3__*, i32, i8*, i32*, i32**, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pSspiEncodeAuthIdentityAsStrings(i32*, i8**, i8**, i8**) #1

declare dso_local i32 @pSspiFreeAuthIdentity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
