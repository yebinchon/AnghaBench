; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_funcargs.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_funcargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_27__, %struct.TYPE_32__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ambiguous syntax (function call x new statement)\00", align 1
@VVOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@VCALL = common dso_local global i32 0, align 4
@OP_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_30__*)* @funcargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @funcargs(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_30__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %4, align 8
  %10 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %12, %struct.TYPE_32__** %5, align 8
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %62 [
    i32 40, label %20
    i32 123, label %49
    i32 128, label %52
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %28 = call i32 @luaX_syntaxerror(%struct.TYPE_31__* %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %31 = call i32 @luaX_next(%struct.TYPE_31__* %30)
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 41
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i64, i64* @VVOID, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %6, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  br label %45

40:                                               ; preds = %29
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %42 = call i32 @explist1(%struct.TYPE_31__* %41, %struct.TYPE_30__* %6)
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %44 = call i32 @luaK_setmultret(%struct.TYPE_32__* %43, %struct.TYPE_30__* %6)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @check_match(%struct.TYPE_31__* %46, i8 signext 41, i8 signext 40, i32 %47)
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %51 = call i32 @constructor(%struct.TYPE_31__* %50, %struct.TYPE_30__* %6)
  br label %65

52:                                               ; preds = %2
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @codestring(%struct.TYPE_31__* %53, %struct.TYPE_30__* %6, i32 %58)
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %61 = call i32 @luaX_next(%struct.TYPE_31__* %60)
  br label %65

62:                                               ; preds = %2
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %64 = call i32 @luaX_syntaxerror(%struct.TYPE_31__* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %108

65:                                               ; preds = %52, %49, %45
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @hasmultret(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 -1, i32* %8, align 4
  br label %91

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VVOID, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %83 = call i32 @luaK_exp2nextreg(%struct.TYPE_32__* %82, %struct.TYPE_30__* %6)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = sub nsw i32 %87, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %84, %75
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %93 = load i32, i32* @VCALL, align 4
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %95 = load i32, i32* @OP_CALL, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @luaK_codeABC(%struct.TYPE_32__* %94, i32 %95, i32 %96, i32 %98, i32 2)
  %100 = call i32 @init_exp(%struct.TYPE_30__* %92, i32 %93, i32 %99)
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @luaK_fixline(%struct.TYPE_32__* %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %91, %62
  ret void
}

declare dso_local i32 @luaX_syntaxerror(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @luaX_next(%struct.TYPE_31__*) #1

declare dso_local i32 @explist1(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @luaK_setmultret(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i32 @check_match(%struct.TYPE_31__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @constructor(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @codestring(%struct.TYPE_31__*, %struct.TYPE_30__*, i32) #1

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_32__*, %struct.TYPE_30__*) #1

declare dso_local i32 @init_exp(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_32__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_fixline(%struct.TYPE_32__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
