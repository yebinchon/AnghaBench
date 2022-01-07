; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_make_decl_spec.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_make_decl_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i64, i32*, %struct.TYPE_11__* }

@STG_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"only one storage class can be specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32)* @make_decl_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @make_decl_spec(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  br label %19

17:                                               ; preds = %5
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi %struct.TYPE_12__* [ %16, %15 ], [ %18, %17 ]
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = call %struct.TYPE_12__* @xmalloc(i32 24)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load i64, i64* @STG_NONE, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %23, %19
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %83

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = icmp ne %struct.TYPE_12__* %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i8* @append_attr_list(i32* %45, i32* %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @STG_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %73

64:                                               ; preds = %42
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @STG_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @error_loc(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = call i32 @free(%struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %73, %38, %32
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = icmp ne %struct.TYPE_12__* %84, null
  br i1 %85, label %86, label %131

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = icmp ne %struct.TYPE_12__* %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i8* @append_attr_list(i32* %93, i32* %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @STG_NONE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %90
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %121

112:                                              ; preds = %90
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @STG_NONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 @error_loc(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %112
  br label %121

121:                                              ; preds = %120, %106
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = icmp ne %struct.TYPE_11__* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = call i32 @free(%struct.TYPE_12__* %129)
  br label %131

131:                                              ; preds = %121, %86, %83
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i32* @append_attr(i32* %134, i32* %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @STG_NONE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %131
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %157

149:                                              ; preds = %131
  %150 = load i32, i32* %10, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* @STG_NONE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 @error_loc(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149
  br label %157

157:                                              ; preds = %156, %144
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = icmp ne %struct.TYPE_11__* %158, null
  br i1 %159, label %160, label %185

160:                                              ; preds = %157
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %185

165:                                              ; preds = %160
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = call %struct.TYPE_11__* @duptype(%struct.TYPE_11__* %166, i32 1)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  store %struct.TYPE_11__* %167, %struct.TYPE_11__** %169, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32* @map_attrs(i8* %172, i32* null)
  store i32* %173, i32** %12, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i8* @append_attr_list(i32* %174, i32* %177)
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i8* %178, i8** %182, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  store i32* null, i32** %184, align 8
  br label %185

185:                                              ; preds = %165, %160, %157
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  ret %struct.TYPE_12__* %186
}

declare dso_local %struct.TYPE_12__* @xmalloc(i32) #1

declare dso_local i8* @append_attr_list(i32*, i32*) #1

declare dso_local i32 @error_loc(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32* @append_attr(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @duptype(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @map_attrs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
