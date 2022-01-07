; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_check_address.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_check_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@check_address.ole32_start = internal global i8* null, align 8
@check_address.ole32_end = internal global i8* null, align 8
@check_address.combase_start = internal global i8* null, align 8
@check_address.combase_end = internal global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ole32.dll\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"combase.dll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_address(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %92

13:                                               ; preds = %2
  %14 = load i8*, i8** @check_address.ole32_start, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @check_address.ole32_end, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %16, %13
  %20 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @check_address.ole32_start, align 8
  %22 = load i8*, i8** @check_address.ole32_start, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %19
  %27 = load i8*, i8** @check_address.ole32_start, align 8
  %28 = load i8*, i8** @check_address.ole32_start, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = bitcast i8* %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %6, align 8
  %35 = load i8*, i8** @check_address.ole32_start, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  store i8* %41, i8** @check_address.ole32_end, align 8
  br label %42

42:                                               ; preds = %26, %16
  %43 = load i8*, i8** @check_address.ole32_start, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ule i8* %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** @check_address.ole32_end, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %46, %42
  %53 = load i8*, i8** @check_address.combase_start, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** @check_address.combase_end, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %55, %52
  %59 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** @check_address.combase_start, align 8
  %61 = load i8*, i8** @check_address.combase_start, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %92

65:                                               ; preds = %58
  %66 = load i8*, i8** @check_address.combase_start, align 8
  %67 = load i8*, i8** @check_address.combase_start, align 8
  %68 = bitcast i8* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  %73 = bitcast i8* %72 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %7, align 8
  %74 = load i8*, i8** @check_address.combase_start, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  store i8* %80, i8** @check_address.combase_end, align 8
  br label %81

81:                                               ; preds = %65, %55
  %82 = load i8*, i8** @check_address.combase_start, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = icmp ule i8* %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** @check_address.combase_end, align 8
  %88 = icmp ult i8* %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ false, %81 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %63, %50, %24, %11
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @GetModuleHandleA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
