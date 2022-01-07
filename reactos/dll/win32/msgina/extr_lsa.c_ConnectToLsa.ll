; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msgina/extr_lsa.c_ConnectToLsa.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msgina/extr_lsa.c_ConnectToLsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"MSGINA\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"LsaRegisterLogonProcess failed (Status 0x%08lx)\0A\00", align 1
@MSV1_0_PACKAGE_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"LsaLookupAuthenticationPackage failed (Status 0x%08lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConnectToLsa(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = ptrtoint i32* %4 to i32
  %16 = call i32 @RtlInitAnsiString(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @LsaRegisterLogonProcess(i32* %4, i32** %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %14
  %28 = ptrtoint i32* %5 to i32
  %29 = load i8*, i8** @MSV1_0_PACKAGE_NAME, align 8
  %30 = call i32 @RtlInitAnsiString(i32 %28, i8* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @LsaLookupAuthenticationPackage(i32* %33, i32* %5, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %27
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %23, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @RtlInitAnsiString(i32, i8*) #1

declare dso_local i32 @LsaRegisterLogonProcess(i32*, i32**, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @LsaLookupAuthenticationPackage(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
