; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_create_from_bundle.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_create_from_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32, i32, i32*, i32*, i32 }

@SIZEOF_HEADER = common dso_local global i32 0, align 4
@SIZEOF_FIELD = common dso_local global i32 0, align 4
@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sproto* (%struct.sproto*, i32*, i64)* @create_from_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sproto* @create_from_bundle(%struct.sproto* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.sproto*, align 8
  %5 = alloca %struct.sproto*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sproto* %0, %struct.sproto** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @struct_field(i32* %15, i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  store %struct.sproto* null, %struct.sproto** %4, align 8
  br label %156

24:                                               ; preds = %20
  %25 = load i32, i32* @SIZEOF_HEADER, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SIZEOF_FIELD, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %8, align 8
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %103, %24
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %106

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @SIZEOF_FIELD, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = call i32 @toword(i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store %struct.sproto* null, %struct.sproto** %4, align 8
  br label %156

50:                                               ; preds = %39
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @count_array(i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.sproto* null, %struct.sproto** %4, align 8
  br label %156

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @SIZEOF_LENGTH, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.sproto*, %struct.sproto** %5, align 8
  %66 = getelementptr inbounds %struct.sproto, %struct.sproto* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sproto*, %struct.sproto** %5, align 8
  %68 = getelementptr inbounds %struct.sproto, %struct.sproto* %67, i32 0, i32 4
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i8* @pool_alloc(i32* %68, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.sproto*, %struct.sproto** %5, align 8
  %76 = getelementptr inbounds %struct.sproto, %struct.sproto* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  br label %95

77:                                               ; preds = %56
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @SIZEOF_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.sproto*, %struct.sproto** %5, align 8
  %84 = getelementptr inbounds %struct.sproto, %struct.sproto* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sproto*, %struct.sproto** %5, align 8
  %86 = getelementptr inbounds %struct.sproto, %struct.sproto* %85, i32 0, i32 4
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i8* @pool_alloc(i32* %86, i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.sproto*, %struct.sproto** %5, align 8
  %94 = getelementptr inbounds %struct.sproto, %struct.sproto* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %77, %59
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @todword(i32* %96)
  %98 = load i32, i32* @SIZEOF_LENGTH, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32*, i32** %8, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %8, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %35

106:                                              ; preds = %35
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %127, %106
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.sproto*, %struct.sproto** %5, align 8
  %110 = getelementptr inbounds %struct.sproto, %struct.sproto* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.sproto*, %struct.sproto** %5, align 8
  %115 = load %struct.sproto*, %struct.sproto** %5, align 8
  %116 = getelementptr inbounds %struct.sproto, %struct.sproto* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32*, i32** %9, align 8
  %122 = call i32* @import_type(%struct.sproto* %114, i32* %120, i32* %121)
  store i32* %122, i32** %9, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  store %struct.sproto* null, %struct.sproto** %4, align 8
  br label %156

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %107

130:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %151, %130
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.sproto*, %struct.sproto** %5, align 8
  %134 = getelementptr inbounds %struct.sproto, %struct.sproto* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.sproto*, %struct.sproto** %5, align 8
  %139 = load %struct.sproto*, %struct.sproto** %5, align 8
  %140 = getelementptr inbounds %struct.sproto, %struct.sproto* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32*, i32** %10, align 8
  %146 = call i32* @import_protocol(%struct.sproto* %138, i32* %144, i32* %145)
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  store %struct.sproto* null, %struct.sproto** %4, align 8
  br label %156

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %131

154:                                              ; preds = %131
  %155 = load %struct.sproto*, %struct.sproto** %5, align 8
  store %struct.sproto* %155, %struct.sproto** %4, align 8
  br label %156

156:                                              ; preds = %154, %149, %125, %55, %49, %23
  %157 = load %struct.sproto*, %struct.sproto** %4, align 8
  ret %struct.sproto* %157
}

declare dso_local i32 @struct_field(i32*, i64) #1

declare dso_local i32 @toword(i32*) #1

declare dso_local i32 @count_array(i32*) #1

declare dso_local i8* @pool_alloc(i32*, i32) #1

declare dso_local i32 @todword(i32*) #1

declare dso_local i32* @import_type(%struct.sproto*, i32*, i32*) #1

declare dso_local i32* @import_protocol(%struct.sproto*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
