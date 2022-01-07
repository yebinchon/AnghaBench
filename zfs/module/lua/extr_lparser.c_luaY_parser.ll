; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_luaY_parser.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_luaY_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_33__*, i32* }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_26__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_34__* @luaY_parser(%struct.TYPE_30__* %0, i32* %1, i32* %2, %struct.TYPE_33__* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__, align 8
  %14 = alloca %struct.TYPE_32__, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %17 = call %struct.TYPE_34__* @luaF_newLclosure(%struct.TYPE_30__* %16, i32 1)
  store %struct.TYPE_34__* %17, %struct.TYPE_34__** %15, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %23 = call i32 @setclLvalue(%struct.TYPE_30__* %18, i32 %21, %struct.TYPE_34__* %22)
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %25 = call i32 @incr_top(%struct.TYPE_30__* %24)
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %27 = call %struct.TYPE_26__* @luaF_newproto(%struct.TYPE_30__* %26)
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %31, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @luaS_new(%struct.TYPE_30__* %32, i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 2
  store i32* %38, i32** %39, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 1
  store %struct.TYPE_33__* %40, %struct.TYPE_33__** %41, align 8
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @luaX_setinput(%struct.TYPE_30__* %51, %struct.TYPE_31__* %13, i32* %52, i32 %56, i32 %57)
  %59 = call i32 @mainfunc(%struct.TYPE_31__* %13, %struct.TYPE_32__* %14)
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %6
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %67, %63, %6
  %73 = phi i1 [ false, %63 ], [ false, %6 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @lua_assert(i32 %74)
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br label %93

93:                                               ; preds = %87, %81, %72
  %94 = phi i1 [ false, %81 ], [ false, %72 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @lua_assert(i32 %95)
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  ret %struct.TYPE_34__* %97
}

declare dso_local %struct.TYPE_34__* @luaF_newLclosure(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @setclLvalue(%struct.TYPE_30__*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @incr_top(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_26__* @luaF_newproto(%struct.TYPE_30__*) #1

declare dso_local i32 @luaS_new(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @luaX_setinput(%struct.TYPE_30__*, %struct.TYPE_31__*, i32*, i32, i32) #1

declare dso_local i32 @mainfunc(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
