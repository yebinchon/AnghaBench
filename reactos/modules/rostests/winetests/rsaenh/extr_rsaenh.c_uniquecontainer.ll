; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_uniquecontainer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_uniquecontainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uniquecontainer.szContainer_md5 = internal constant [33 x i8] c"9d20fd8d05ed2b8455d125d0bf6d6a70\00", align 16
@uniquecontainer.szCryptography = internal constant [32 x i8] c"Software\\Microsoft\\Cryptography\00", align 16
@uniquecontainer.szMachineGuid = internal constant [12 x i8] c"MachineGuid\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@win2k = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @uniquecontainer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniquecontainer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %15 = load i32, i32* @KEY_READ, align 4
  %16 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @RegOpenKeyExA(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @uniquecontainer.szCryptography, i64 0, i64 0), i32 0, i32 %17, i32* %3)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %24 = call i32 @RegOpenKeyA(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @uniquecontainer.szCryptography, i64 0, i64 0), i32* %3)
  %25 = load i32, i32* @win2k, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @win2k, align 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %3, align 4
  %29 = ptrtoint i8* %12 to i32
  %30 = call i32 @RegQueryValueExA(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @uniquecontainer.szMachineGuid, i64 0, i64 0), i32* null, i32* null, i32 %29, i32* %6)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @RegCloseKey(i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %43

36:                                               ; preds = %27
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @lstrcpyA(i8* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @uniquecontainer.szContainer_md5, i64 0, i64 0))
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @lstrcatA(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @lstrcatA(i8* %41, i8* %12)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %35
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %47 [
    i32 0, label %46
    i32 1, label %46
  ]

46:                                               ; preds = %43, %43
  ret void

47:                                               ; preds = %43
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
