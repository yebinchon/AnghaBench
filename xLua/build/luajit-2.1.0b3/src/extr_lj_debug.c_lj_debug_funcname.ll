; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_funcname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_funcname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@LJ_FR2 = common dso_local global i32 0, align 4
@NO_BCPOS = common dso_local global i64 0, align 8
@MM_call = common dso_local global i64 0, align 8
@BC_ITERC = common dso_local global i64 0, align 8
@MM__MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"metamethod\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lj_debug_funcname(%struct.TYPE_9__* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @tvref(i32 %18)
  %20 = load i32, i32* @LJ_FR2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = icmp ule i32* %15, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %97

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @frame_isvarg(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @frame_prevd(i32* %30)
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @frame_prev(i32* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @frame_func(i32* %35)
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @debug_framepc(%struct.TYPE_9__* %37, i32* %38, i32* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @NO_BCPOS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %32
  %45 = load i32*, i32** %9, align 8
  %46 = call %struct.TYPE_10__* @funcproto(i32* %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %11, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = call i32* @proto_bc(%struct.TYPE_10__* %47)
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @check_exp(i32 %54, i64 %55)
  %57 = getelementptr inbounds i32, i32* %48, i64 %56
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @bc_op(i32 %59)
  %61 = call i64 @bcmode_mm(i64 %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @MM_call, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %44
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bc_a(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @bc_op(i32 %70)
  %72 = load i64, i64* @BC_ITERC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %75, 3
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i8**, i8*** %7, align 8
  %82 = call i8* @lj_debug_slotname(%struct.TYPE_10__* %78, i32* %79, i32 %80, i8** %81)
  store i8* %82, i8** %4, align 8
  br label %97

83:                                               ; preds = %44
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @MM__MAX, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = call i32 @G(%struct.TYPE_9__* %88)
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @mmname_str(i32 %89, i64 %90)
  %92 = call i8* @strdata(i32 %91)
  %93 = load i8**, i8*** %7, align 8
  store i8* %92, i8** %93, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %32
  store i8* null, i8** %4, align 8
  br label %97

97:                                               ; preds = %96, %87, %77, %24
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i32* @tvref(i32) #1

declare dso_local i64 @frame_isvarg(i32*) #1

declare dso_local i32* @frame_prevd(i32*) #1

declare dso_local i32* @frame_prev(i32*) #1

declare dso_local i32* @frame_func(i32*) #1

declare dso_local i64 @debug_framepc(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @funcproto(i32*) #1

declare dso_local i32* @proto_bc(%struct.TYPE_10__*) #1

declare dso_local i64 @check_exp(i32, i64) #1

declare dso_local i64 @bcmode_mm(i64) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32 @bc_a(i32) #1

declare dso_local i8* @lj_debug_slotname(%struct.TYPE_10__*, i32*, i32, i8**) #1

declare dso_local i8* @strdata(i32) #1

declare dso_local i32 @mmname_str(i32, i64) #1

declare dso_local i32 @G(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
