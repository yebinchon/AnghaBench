; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_create_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_create_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32, i32, i32, i64, i64, i32*, i8* }
%struct.TYPE_14__ = type { i32, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: redefinition\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__**)* @create_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_function(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @lookup_dim_decls(%struct.TYPE_17__* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @lookup_funcs_name(%struct.TYPE_17__* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i64 @lookup_const_decls(%struct.TYPE_17__* %26, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25, %18, %3
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @debugstr_w(i32 %36)
  %38 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @E_FAIL, align 4
  store i32 %39, i32* %4, align 4
  br label %200

40:                                               ; preds = %25
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @compiler_alloc(i32 %43, i32 64)
  %45 = bitcast i8* %44 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %8, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = icmp ne %struct.TYPE_15__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %4, align 4
  br label %200

50:                                               ; preds = %40
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @compiler_alloc_string(i32 %53, i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %65, i32* %4, align 4
  br label %200

66:                                               ; preds = %50
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 7
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = icmp ne %struct.TYPE_18__* %92, null
  br i1 %93, label %94, label %181

94:                                               ; preds = %66
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %10, align 8
  br label %98

98:                                               ; preds = %106, %94
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = icmp ne %struct.TYPE_18__* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  store %struct.TYPE_18__* %109, %struct.TYPE_18__** %10, align 8
  br label %98

110:                                              ; preds = %98
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i8* @compiler_alloc(i32 %113, i32 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_14__*
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = icmp ne %struct.TYPE_14__* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %110
  %129 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %129, i32* %4, align 4
  br label %200

130:                                              ; preds = %110
  store i32 0, i32* %11, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  store %struct.TYPE_18__* %133, %struct.TYPE_18__** %10, align 8
  br label %134

134:                                              ; preds = %174, %130
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %136 = icmp ne %struct.TYPE_18__* %135, null
  br i1 %136, label %137, label %180

137:                                              ; preds = %134
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @compiler_alloc_string(i32 %140, i32 %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  store i8* %144, i8** %151, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %137
  %162 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %162, i32* %4, align 4
  br label %200

163:                                              ; preds = %137
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i32 %166, i32* %173, align 8
  br label %174

174:                                              ; preds = %163
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  store %struct.TYPE_18__* %177, %struct.TYPE_18__** %10, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %134

180:                                              ; preds = %134
  br label %184

181:                                              ; preds = %66
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %183, align 8
  br label %184

184:                                              ; preds = %181, %180
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %190 = call i32 @compile_func(%struct.TYPE_17__* %185, i32 %188, %struct.TYPE_15__* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i64 @FAILED(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %184
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %4, align 4
  br label %200

196:                                              ; preds = %184
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %198 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %197, %struct.TYPE_15__** %198, align 8
  %199 = load i32, i32* @S_OK, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %196, %194, %161, %128, %64, %48, %33
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i64 @lookup_dim_decls(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @lookup_funcs_name(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @lookup_const_decls(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i8* @compiler_alloc(i32, i32) #1

declare dso_local i8* @compiler_alloc_string(i32, i32) #1

declare dso_local i32 @compile_func(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
