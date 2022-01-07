; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_make_exprt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_make_exprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, i32, i8*, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32* }

@STG_NONE = common dso_local global i64 0, align 8
@STG_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"invalid storage class for type expression\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@EXPR_SIZEOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@EXPR_CAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @make_exprt(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STG_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STG_REGISTER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @error_loc(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16, %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = call %struct.TYPE_11__* @xmalloc(i32 32)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load i8*, i8** @FALSE, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @EXPR_SIZEOF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %24
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @is_integer_type(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @is_float_type(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** @TRUE, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @type_memsize(i32* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %49
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @EXPR_CAST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %144

66:                                               ; preds = %62
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %144

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @is_integer_type(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %134

75:                                               ; preds = %71
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @type_memsize(i32* %76)
  %78 = mul nsw i32 %77, 8
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i64 @is_signed_integer_type(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = sub i32 %86, 1
  %88 = shl i32 1, %87
  %89 = sub i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub i32 %93, 1
  %95 = shl i32 1, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %85
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 0, %101
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %102, %103
  %105 = sub i32 0, %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %116

108:                                              ; preds = %85
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %98
  br label %133

117:                                              ; preds = %75
  %118 = load i32, i32* %9, align 4
  %119 = sub i32 %118, 1
  %120 = shl i32 1, %119
  %121 = sub i32 %120, 1
  %122 = load i32, i32* %9, align 4
  %123 = sub i32 %122, 1
  %124 = shl i32 1, %123
  %125 = or i32 %121, %124
  store i32 %125, i32* %10, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %128, %129
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %117, %116
  br label %143

134:                                              ; preds = %71
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %133
  br label %144

144:                                              ; preds = %143, %66, %62
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = call i32 @free(%struct.TYPE_10__* %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %147
}

declare dso_local i32 @error_loc(i8*) #1

declare dso_local %struct.TYPE_11__* @xmalloc(i32) #1

declare dso_local i64 @is_integer_type(i32*) #1

declare dso_local i64 @is_float_type(i32*) #1

declare dso_local i32 @type_memsize(i32*) #1

declare dso_local i64 @is_signed_integer_type(i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
