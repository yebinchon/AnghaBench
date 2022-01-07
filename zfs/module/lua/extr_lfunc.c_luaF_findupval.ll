; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lfunc.c_luaF_findupval.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lfunc.c_luaF_findupval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32*, i32*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }

@LUA_TUPVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @luaF_findupval(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = call %struct.TYPE_18__* @G(%struct.TYPE_17__* %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  store i32** %14, i32*** %7, align 8
  br label %15

15:                                               ; preds = %68, %2
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.TYPE_17__* @gco2uv(i32* %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp uge i32* %24, %25
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi i1 [ false, %15 ], [ %26, %19 ]
  br i1 %28, label %29, label %71

29:                                               ; preds = %27
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = call i32* @obj2gco(%struct.TYPE_17__* %30)
  store i32* %31, i32** %10, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = icmp ne i32* %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @lua_assert(i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @isold(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = call i32* @obj2gco(%struct.TYPE_17__* %45)
  %47 = call i64 @isold(i32* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %29
  %50 = phi i1 [ true, %29 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @lua_assert(i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @isdead(%struct.TYPE_18__* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @changewhite(i32* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %3, align 8
  br label %139

68:                                               ; preds = %49
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  store i32** %70, i32*** %7, align 8
  br label %15

71:                                               ; preds = %27
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load i32, i32* @LUA_TUPVAL, align 4
  %74 = load i32**, i32*** %7, align 8
  %75 = call %struct.TYPE_19__* @luaC_newobj(%struct.TYPE_17__* %72, i32 %73, i32 48, i32** %74, i32 0)
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %9, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store %struct.TYPE_17__* %81, %struct.TYPE_17__** %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store %struct.TYPE_17__* %91, %struct.TYPE_17__** %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store %struct.TYPE_17__* %105, %struct.TYPE_17__** %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = icmp eq %struct.TYPE_17__* %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %71
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %133 = icmp eq %struct.TYPE_17__* %131, %132
  br label %134

134:                                              ; preds = %122, %71
  %135 = phi i1 [ false, %71 ], [ %133, %122 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @lua_assert(i32 %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %3, align 8
  br label %139

139:                                              ; preds = %134, %66
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %140
}

declare dso_local %struct.TYPE_18__* @G(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @gco2uv(i32*) #1

declare dso_local i32* @obj2gco(%struct.TYPE_17__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @isold(i32*) #1

declare dso_local i64 @isdead(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @changewhite(i32*) #1

declare dso_local %struct.TYPE_19__* @luaC_newobj(%struct.TYPE_17__*, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
