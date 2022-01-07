; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_funcargs.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_funcargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__, %struct.TYPE_30__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }

@VVOID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@VNONRELOC = common dso_local global i64 0, align 8
@LUA_MULTRET = common dso_local global i32 0, align 4
@VCALL = common dso_local global i32 0, align 4
@OP_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*, i32)* @funcargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @funcargs(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_28__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %13, %struct.TYPE_30__** %7, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %51 [
    i32 40, label %18
    i32 123, label %38
    i32 128, label %41
  ]

18:                                               ; preds = %3
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %20 = call i32 @luaX_next(%struct.TYPE_29__* %19)
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 41
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* @VVOID, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  br label %34

29:                                               ; preds = %18
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %31 = call i32 @explist(%struct.TYPE_29__* %30, %struct.TYPE_28__* %8)
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = call i32 @luaK_setmultret(%struct.TYPE_30__* %32, %struct.TYPE_28__* %8)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @check_match(%struct.TYPE_29__* %35, i8 signext 41, i8 signext 40, i32 %36)
  br label %54

38:                                               ; preds = %3
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %40 = call i32 @constructor(%struct.TYPE_29__* %39, %struct.TYPE_28__* %8)
  br label %54

41:                                               ; preds = %3
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @codestring(%struct.TYPE_29__* %42, %struct.TYPE_28__* %8, i32 %47)
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %50 = call i32 @luaX_next(%struct.TYPE_29__* %49)
  br label %54

51:                                               ; preds = %3
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %53 = call i32 @luaX_syntaxerror(%struct.TYPE_29__* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %41, %38, %34
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VNONRELOC, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @lua_assert(i32 %60)
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %9, align 4
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @hasmultret(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* @LUA_MULTRET, align 4
  store i32 %71, i32* %10, align 4
  br label %87

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VVOID, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %79 = call i32 @luaK_exp2nextreg(%struct.TYPE_30__* %78, %struct.TYPE_28__* %8)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sub nsw i32 %83, %85
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %80, %70
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = load i32, i32* @VCALL, align 4
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %91 = load i32, i32* @OP_CALL, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @luaK_codeABC(%struct.TYPE_30__* %90, i32 %91, i32 %92, i32 %94, i32 2)
  %96 = call i32 @init_exp(%struct.TYPE_28__* %88, i32 %89, i32 %95)
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @luaK_fixline(%struct.TYPE_30__* %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  ret void
}

declare dso_local i32 @luaX_next(%struct.TYPE_29__*) #1

declare dso_local i32 @explist(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @luaK_setmultret(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @check_match(%struct.TYPE_29__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @constructor(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @codestring(%struct.TYPE_29__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @luaX_syntaxerror(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i32 @init_exp(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_30__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_fixline(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
