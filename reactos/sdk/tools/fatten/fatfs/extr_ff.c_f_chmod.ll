; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_chmod.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@_FS_RPATH = common dso_local global i64 0, align 8
@NSFLAG = common dso_local global i64 0, align 8
@NS_DOT = common dso_local global i32 0, align 4
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@AM_RDO = common dso_local global i32 0, align 4
@AM_HID = common dso_local global i32 0, align 4
@AM_SYS = common dso_local global i32 0, align 4
@AM_ARC = common dso_local global i32 0, align 4
@DIR_Attr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_chmod(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %13 = call i64 @find_volume(%struct.TYPE_8__** %12, i32** %5, i32 1)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @FR_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %3
  %18 = call i32 @INIT_BUF(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %9)
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @follow_path(%struct.TYPE_7__* %9, i32* %19)
  store i64 %20, i64* %8, align 8
  %21 = call i32 (...) @FREE_BUF()
  %22 = load i64, i64* @_FS_RPATH, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @FR_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NSFLAG, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NS_DOT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %37, %28, %24, %17
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @FR_OK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %49, i64* %8, align 8
  br label %80

50:                                               ; preds = %43
  %51 = load i32, i32* @AM_RDO, align 4
  %52 = load i32, i32* @AM_HID, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AM_SYS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AM_ARC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %60, %61
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* @DIR_Attr, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = or i32 %62, %69
  %71 = load i32*, i32** %10, align 8
  %72 = load i64, i64* @DIR_Attr, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i64 @sync_fs(%struct.TYPE_8__* %78)
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %50, %48
  br label %81

81:                                               ; preds = %80, %39
  br label %82

82:                                               ; preds = %81, %3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @LEAVE_FF(%struct.TYPE_8__* %84, i64 %85)
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i64 @find_volume(%struct.TYPE_8__**, i32**, i32) #1

declare dso_local i32 @INIT_BUF(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i64 @follow_path(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i64 @sync_fs(%struct.TYPE_8__*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
