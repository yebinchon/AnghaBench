; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_debugstr_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_debugstr_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debugsid_str = common dso_local global i8** null, align 8
@debugsid_index = common dso_local global i64 0, align 8
@SID_SLOTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ConvertSidToStringSidA failed le=%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @debugstr_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debugstr_sid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @GetLastError()
  store i32 %6, i32* %4, align 4
  %7 = load i8**, i8*** @debugsid_str, align 8
  %8 = load i64, i64* @debugsid_index, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i64, i64* @debugsid_index, align 8
  %12 = add i64 %11, 1
  %13 = load i64, i64* @SID_SLOTS, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* @debugsid_index, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ConvertSidToStringSidA(i32 %15, i8** %3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %44

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 7
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @memcpy(i8* %28, i8* %29, i32 4)
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -4
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @LocalFree(i8* %35)
  br label %43

37:                                               ; preds = %22
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcpy(i8* %38, i8* %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @LocalFree(i8* %41)
  br label %43

43:                                               ; preds = %37, %27
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @SetLastError(i32 %45)
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ConvertSidToStringSidA(i32, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
