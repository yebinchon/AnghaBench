; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_SaveOLE10.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_SaveOLE10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i8*, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i8*, i32)* }

@S_OK = common dso_local global i64 0, align 8
@CONVERT10_E_OLESTREAM_PUT = common dso_local global i64 0, align 8
@OLESTREAM_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @OLECONVERT_SaveOLE10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OLECONVERT_SaveOLE10(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %7 = load i64, i64* @S_OK, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = bitcast i64* %15 to i8*
  %17 = call i32 %12(%struct.TYPE_16__* %13, i8* %16, i32 8)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = bitcast i64* %35 to i8*
  %37 = call i32 %32(%struct.TYPE_16__* %33, i8* %36, i32 8)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 8
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %27
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OLESTREAM_ID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %204

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %204

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %204

59:                                               ; preds = %55
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = bitcast i32* %67 to i8*
  %69 = call i32 %64(%struct.TYPE_16__* %65, i8* %68, i32 4)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %73, %59
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %89(%struct.TYPE_16__* %90, i8* %93, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %103, %84
  br label %106

106:                                              ; preds = %105, %79
  br label %107

107:                                              ; preds = %106, %75
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @S_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 7
  %120 = bitcast i32* %119 to i8*
  %121 = call i32 %116(%struct.TYPE_16__* %117, i8* %120, i32 4)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %123, 4
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %125, %111
  br label %128

128:                                              ; preds = %127, %107
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @S_OK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 6
  %141 = bitcast i32* %140 to i8*
  %142 = call i32 %137(%struct.TYPE_16__* %138, i8* %141, i32 4)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ne i64 %144, 4
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %146, %132
  br label %149

149:                                              ; preds = %148, %128
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* @S_OK, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %157, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 4
  %162 = bitcast i32* %161 to i8*
  %163 = call i32 %158(%struct.TYPE_16__* %159, i8* %162, i32 4)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp ne i64 %165, 4
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %168, i64* %6, align 8
  br label %169

169:                                              ; preds = %167, %153
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* @S_OK, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %170
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %174
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_16__*, i8*, i32)*, i32 (%struct.TYPE_16__*, i8*, i32)** %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 %184(%struct.TYPE_16__* %185, i8* %189, i32 %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %179
  %200 = load i64, i64* @CONVERT10_E_OLESTREAM_PUT, align 8
  store i64 %200, i64* %6, align 8
  br label %201

201:                                              ; preds = %199, %179
  br label %202

202:                                              ; preds = %201, %174
  br label %203

203:                                              ; preds = %202, %170
  br label %204

204:                                              ; preds = %203, %55, %50, %44
  %205 = load i64, i64* %6, align 8
  ret i64 %205
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
