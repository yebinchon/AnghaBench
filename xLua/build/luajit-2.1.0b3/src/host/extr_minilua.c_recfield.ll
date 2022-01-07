; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_recfield.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_recfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.ConsControl = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@TK_NAME = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@OP_SETTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.ConsControl*)* @recfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recfield(%struct.TYPE_19__* %0, %struct.ConsControl* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TK_NAME, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = sub nsw i64 %29, 2
  %31 = call i32 @luaY_checklimit(%struct.TYPE_20__* %25, i32 %28, i64 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = call i32 @checkname(%struct.TYPE_19__* %32, i32* %7)
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = call i32 @yindex(%struct.TYPE_19__* %35, i32* %7)
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %39 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i32 @checknext(%struct.TYPE_19__* %42, i8 signext 61)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = call i32 @luaK_exp2RK(%struct.TYPE_20__* %44, i32* %7)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = call i32 @expr(%struct.TYPE_19__* %46, i32* %8)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = load i32, i32* @OP_SETTABLE, align 4
  %50 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %51 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = call i32 @luaK_exp2RK(%struct.TYPE_20__* %58, i32* %8)
  %60 = call i32 @luaK_codeABC(%struct.TYPE_20__* %48, i32 %49, i32 %56, i32 %57, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @luaY_checklimit(%struct.TYPE_20__*, i32, i64, i8*) #1

declare dso_local i32 @checkname(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @yindex(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @checknext(%struct.TYPE_19__*, i8 signext) #1

declare dso_local i32 @luaK_exp2RK(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @expr(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_20__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
