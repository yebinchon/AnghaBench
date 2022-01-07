; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_create_classes_root_hkey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_create_classes_root_hkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32*, i32*, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@classes_rootW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %p\0A\00", align 1
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@classes_root_hkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_classes_root_hkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_classes_root_hkey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 48, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* @classes_rootW, align 4
  %15 = call i32 @RtlInitUnicodeString(%struct.TYPE_5__* %7, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @create_key(i32* %4, i32 %16, %struct.TYPE_6__* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @debugstr_w(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @InterlockedCompareExchangePointer(i8** bitcast (i32* @classes_root_hkey to i8**), i32 %33, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @NtClose(i32 %39)
  br label %41

41:                                               ; preds = %38, %36
  br label %44

42:                                               ; preds = %20
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @create_key(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @InterlockedCompareExchangePointer(i8**, i32, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
