; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_import_type.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_import_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32 }
%struct.sproto_type = type { i32, i32, i32, %struct.field*, i32 }
%struct.field = type { i32 }

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@SIZEOF_FIELD = common dso_local global i32 0, align 4
@SIZEOF_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sproto*, %struct.sproto_type*, i32*)* @import_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @import_type(%struct.sproto* %0, %struct.sproto_type* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sproto*, align 8
  %6 = alloca %struct.sproto_type*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.field*, align 8
  store %struct.sproto* %0, %struct.sproto** %5, align 8
  store %struct.sproto_type* %1, %struct.sproto_type** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @todword(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @SIZEOF_LENGTH, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @struct_field(i32* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %3
  store i32* null, i32** %4, align 8
  br label %187

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @SIZEOF_FIELD, align 4
  %42 = mul nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @SIZEOF_HEADER, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @toword(i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32* null, i32** %4, align 8
  br label %187

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @SIZEOF_FIELD, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %63 = call i32 @memset(%struct.sproto_type* %62, i32 0, i32 32)
  %64 = load i32, i32* @SIZEOF_HEADER, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SIZEOF_FIELD, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %64, %67
  %69 = load i32*, i32** %7, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %7, align 8
  %72 = load %struct.sproto*, %struct.sproto** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @import_string(%struct.sproto* %72, i32* %73)
  %75 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %76 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i32*, i32** %8, align 8
  store i32* %80, i32** %4, align 8
  br label %187

81:                                               ; preds = %61
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @todword(i32* %82)
  %84 = load i32, i32* @SIZEOF_LENGTH, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @count_array(i32* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32* null, i32** %4, align 8
  br label %187

94:                                               ; preds = %81
  %95 = load i32, i32* @SIZEOF_LENGTH, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %7, align 8
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %102 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.sproto*, %struct.sproto** %5, align 8
  %104 = getelementptr inbounds %struct.sproto, %struct.sproto* %103, i32 0, i32 0
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call %struct.field* @pool_alloc(i32* %104, i32 %108)
  %110 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %111 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %110, i32 0, i32 3
  store %struct.field* %109, %struct.field** %111, align 8
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %148, %94
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %151

116:                                              ; preds = %112
  %117 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %118 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %117, i32 0, i32 3
  %119 = load %struct.field*, %struct.field** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.field, %struct.field* %119, i64 %121
  store %struct.field* %122, %struct.field** %17, align 8
  %123 = load %struct.sproto*, %struct.sproto** %5, align 8
  %124 = load %struct.field*, %struct.field** %17, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32* @import_field(%struct.sproto* %123, %struct.field* %124, i32* %125)
  store i32* %126, i32** %7, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  store i32* null, i32** %4, align 8
  br label %187

130:                                              ; preds = %116
  %131 = load %struct.field*, %struct.field** %17, align 8
  %132 = getelementptr inbounds %struct.field, %struct.field* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32* null, i32** %4, align 8
  br label %187

138:                                              ; preds = %130
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  %142 = icmp sgt i32 %139, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %143, %138
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %112

151:                                              ; preds = %112
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %154 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %156 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %155, i32 0, i32 3
  %157 = load %struct.field*, %struct.field** %156, align 8
  %158 = getelementptr inbounds %struct.field, %struct.field* %157, i64 0
  %159 = getelementptr inbounds %struct.field, %struct.field* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %162 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %164 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %163, i32 0, i32 3
  %165 = load %struct.field*, %struct.field** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.field, %struct.field* %165, i64 %168
  %170 = getelementptr inbounds %struct.field, %struct.field* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %173 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %171, %174
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %179 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %177, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %151
  %183 = load %struct.sproto_type*, %struct.sproto_type** %6, align 8
  %184 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %183, i32 0, i32 2
  store i32 -1, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %151
  %186 = load i32*, i32** %8, align 8
  store i32* %186, i32** %4, align 8
  br label %187

187:                                              ; preds = %185, %137, %129, %93, %79, %55, %36
  %188 = load i32*, i32** %4, align 8
  ret i32* %188
}

declare dso_local i32 @todword(i32*) #1

declare dso_local i32 @struct_field(i32*, i32) #1

declare dso_local i32 @toword(i32*) #1

declare dso_local i32 @memset(%struct.sproto_type*, i32, i32) #1

declare dso_local i32 @import_string(%struct.sproto*, i32*) #1

declare dso_local i32 @count_array(i32*) #1

declare dso_local %struct.field* @pool_alloc(i32*, i32) #1

declare dso_local i32* @import_field(%struct.sproto*, %struct.field*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
