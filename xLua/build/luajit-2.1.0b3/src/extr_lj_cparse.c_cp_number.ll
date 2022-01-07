; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_number.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64 }

@STRSCAN_OPT_C = common dso_local global i32 0, align 4
@STRSCAN_INT = common dso_local global i64 0, align 8
@CTID_INT32 = common dso_local global i32 0, align 4
@STRSCAN_U32 = common dso_local global i64 0, align 8
@CTID_UINT32 = common dso_local global i32 0, align 4
@CPARSE_MODE_SKIP = common dso_local global i32 0, align 4
@CTOK_INTEGER = common dso_local global i32 0, align 4
@LJ_ERR_XNUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @cp_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_number(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 8
  %10 = call i32 @cp_save(%struct.TYPE_11__* %6, i8 signext %9)
  br label %11

11:                                               ; preds = %5
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = call i32 @cp_get(%struct.TYPE_11__* %12)
  %14 = call i64 @lj_char_isident(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %5, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @cp_save(%struct.TYPE_11__* %17, i8 signext 0)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = call i64 @sbufB(i32* %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* @STRSCAN_OPT_C, align 4
  %24 = call i64 @lj_strscan_scan(i32* %22, %struct.TYPE_10__* %4, i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @STRSCAN_INT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load i32, i32* @CTID_INT32, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  br label %56

33:                                               ; preds = %16
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @STRSCAN_U32, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @CTID_UINT32, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CPARSE_MODE_SKIP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = load i32, i32* @CTOK_INTEGER, align 4
  %52 = load i32, i32* @LJ_ERR_XNUMBER, align 4
  %53 = call i32 @cp_errmsg(%struct.TYPE_11__* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %28
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load i32, i32* @CTOK_INTEGER, align 4
  ret i32 %62
}

declare dso_local i32 @cp_save(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i64 @lj_char_isident(i32) #1

declare dso_local i32 @cp_get(%struct.TYPE_11__*) #1

declare dso_local i64 @lj_strscan_scan(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @sbufB(i32*) #1

declare dso_local i32 @cp_errmsg(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
