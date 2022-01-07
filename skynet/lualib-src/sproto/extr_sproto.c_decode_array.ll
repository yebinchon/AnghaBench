; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_decode_array.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_decode_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i32, i32, i32*, i32 }

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@SIZEOF_INT32 = common dso_local global i32 0, align 4
@SIZEOF_INT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (%struct.sproto_arg*)*, %struct.sproto_arg*, i32*)* @decode_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_array(i32 (%struct.sproto_arg*)* %0, %struct.sproto_arg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.sproto_arg*)*, align 8
  %6 = alloca %struct.sproto_arg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 (%struct.sproto_arg*)* %0, i32 (%struct.sproto_arg*)** %5, align 8
  store %struct.sproto_arg* %1, %struct.sproto_arg** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i8* @todword(i32* %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %21 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %27 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %29 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %31 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %30, i32 0, i32 3
  store i32 0, i32* %31, align 8
  %32 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %5, align 8
  %33 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %34 = call i32 %32(%struct.sproto_arg* %33)
  store i32 0, i32* %4, align 4
  br label %188

35:                                               ; preds = %3
  %36 = load i32, i32* @SIZEOF_LENGTH, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %186 [
    i32 130, label %41
    i32 131, label %153
    i32 129, label %180
    i32 128, label %180
  ]

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SIZEOF_INT32, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @SIZEOF_INT32, align 4
  %54 = sext i32 %53 to i64
  %55 = srem i64 %52, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %188

58:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @SIZEOF_INT32, align 4
  %64 = sext i32 %63 to i64
  %65 = sdiv i64 %62, %64
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %59
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @SIZEOF_INT32, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = call i8* @todword(i32* %73)
  %75 = call i32 @expand64(i8* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %79 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %81 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %80, i32 0, i32 2
  store i32* %12, i32** %81, align 8
  %82 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %83 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %82, i32 0, i32 3
  store i32 4, i32* %83, align 8
  %84 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %5, align 8
  %85 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %86 = call i32 %84(%struct.sproto_arg* %85)
  br label %87

87:                                               ; preds = %67
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %59

90:                                               ; preds = %59
  br label %152

91:                                               ; preds = %41
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @SIZEOF_INT64, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %150

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = load i32, i32* @SIZEOF_INT64, align 4
  %98 = sext i32 %97 to i64
  %99 = srem i64 %96, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 -1, i32* %4, align 4
  br label %188

102:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %146, %102
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %8, align 8
  %107 = load i32, i32* @SIZEOF_INT64, align 4
  %108 = sext i32 %107 to i64
  %109 = sdiv i64 %106, %108
  %110 = icmp slt i64 %105, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %103
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @SIZEOF_INT64, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = call i8* @todword(i32* %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @SIZEOF_INT64, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* @SIZEOF_INT32, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i8* @todword(i32* %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = shl i32 %132, 32
  %134 = or i32 %131, %133
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  %137 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %138 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %140 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %139, i32 0, i32 2
  store i32* %15, i32** %140, align 8
  %141 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %142 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %141, i32 0, i32 3
  store i32 4, i32* %142, align 8
  %143 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %5, align 8
  %144 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %145 = call i32 %143(%struct.sproto_arg* %144)
  br label %146

146:                                              ; preds = %111
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %103

149:                                              ; preds = %103
  br label %151

150:                                              ; preds = %91
  store i32 -1, i32* %4, align 4
  br label %188

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151, %90
  br label %187

153:                                              ; preds = %35
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %176, %153
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %8, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %154
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  %167 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %168 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %170 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %169, i32 0, i32 2
  store i32* %16, i32** %170, align 8
  %171 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %172 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %171, i32 0, i32 3
  store i32 4, i32* %172, align 8
  %173 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %5, align 8
  %174 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %175 = call i32 %173(%struct.sproto_arg* %174)
  br label %176

176:                                              ; preds = %159
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %154

179:                                              ; preds = %154
  br label %187

180:                                              ; preds = %35, %35
  %181 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %5, align 8
  %182 = load %struct.sproto_arg*, %struct.sproto_arg** %6, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = call i32 @decode_array_object(i32 (%struct.sproto_arg*)* %181, %struct.sproto_arg* %182, i32* %183, i64 %184)
  store i32 %185, i32* %4, align 4
  br label %188

186:                                              ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %188

187:                                              ; preds = %179, %152
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %186, %180, %150, %101, %57, %25
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i8* @todword(i32*) #1

declare dso_local i32 @expand64(i8*) #1

declare dso_local i32 @decode_array_object(i32 (%struct.sproto_arg*)*, %struct.sproto_arg*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
