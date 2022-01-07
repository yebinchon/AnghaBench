; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pnpdump/extr_pnpdump.c_PrintDeviceData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pnpdump/extr_pnpdump.c_PrintDeviceData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Node: %x  Size %hu (0x%hx)\0A\00", align 1
@Hex = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"  '%s' (%s)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"      Large tag: type %u  size %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"      Logical device ID\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"      Compatible device ID\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"      Small tag: type %u  size %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintDeviceData(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @memcpy(i8* %18, i32* %20, i32 4)
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 2
  %26 = and i32 %25, 31
  %27 = add nsw i32 %26, 64
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 3
  %34 = and i32 %33, 24
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 5
  %39 = and i32 %38, 7
  %40 = add nsw i32 %34, %39
  %41 = add nsw i32 %40, 64
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 31
  %48 = add nsw i32 %47, 64
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 2
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** @Hex, align 8
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 3
  store i8 %59, i8* %60, align 1
  %61 = load i8*, i8** @Hex, align 8
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 4
  store i8 %68, i8* %69, align 1
  %70 = load i8*, i8** @Hex, align 8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 15
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %70, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 5
  store i8 %78, i8* %79, align 1
  %80 = load i8*, i8** @Hex, align 8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 15
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %80, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 6
  store i8 %87, i8* %88, align 1
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 7
  store i8 0, i8* %89, align 1
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %92 = call i8* @GetDeviceName(i8* %91)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %97, 4
  br i1 %98, label %99, label %192

99:                                               ; preds = %1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 1
  %102 = bitcast %struct.TYPE_3__* %101 to i8*
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %186, %99
  %104 = load i64, i64* @TRUE, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %191

106:                                              ; preds = %103
  %107 = load i8*, i8** %4, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 128
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %106
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 127
  store i32 %116, i32* %6, align 4
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %4, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %4, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %126, 16
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %4, align 8
  %132 = load i32, i32* %6, align 4
  switch i32 %132, label %142 [
    i32 1, label %133
    i32 5, label %136
    i32 6, label %139
  ]

133:                                              ; preds = %112
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @PnpDecodeMemory16(i8* %134)
  br label %146

136:                                              ; preds = %112
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @PnpDecodeMemory32(i8* %137)
  br label %146

139:                                              ; preds = %112
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @PnpDecodeFixedMemory(i8* %140)
  br label %146

142:                                              ; preds = %112
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %139, %136, %133
  br label %186

147:                                              ; preds = %106
  %148 = load i8*, i8** %4, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 3
  %152 = and i32 %151, 15
  store i32 %152, i32* %6, align 4
  %153 = load i8*, i8** %4, align 8
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 7
  store i32 %156, i32* %5, align 4
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %4, align 8
  %159 = load i32, i32* %6, align 4
  switch i32 %159, label %177 [
    i32 2, label %160
    i32 3, label %162
    i32 4, label %164
    i32 5, label %167
    i32 8, label %170
    i32 9, label %173
    i32 15, label %176
  ]

160:                                              ; preds = %147
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %181

162:                                              ; preds = %147
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %181

164:                                              ; preds = %147
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @PnpDecodeIrq(i8* %165)
  br label %181

167:                                              ; preds = %147
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @PnpDecodeDma(i8* %168)
  br label %181

170:                                              ; preds = %147
  %171 = load i8*, i8** %4, align 8
  %172 = call i32 @PnpDecodeIoPort(i8* %171)
  br label %181

173:                                              ; preds = %147
  %174 = load i8*, i8** %4, align 8
  %175 = call i32 @PnpDecodeFixedIoPort(i8* %174)
  br label %181

176:                                              ; preds = %147
  br label %181

177:                                              ; preds = %147
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %176, %173, %170, %167, %164, %162, %160
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %182, 15
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %191

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185, %146
  %187 = load i8*, i8** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8* %190, i8** %4, align 8
  br label %103

191:                                              ; preds = %184, %103
  br label %192

192:                                              ; preds = %191, %1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i8* @GetDeviceName(i8*) #1

declare dso_local i32 @PnpDecodeMemory16(i8*) #1

declare dso_local i32 @PnpDecodeMemory32(i8*) #1

declare dso_local i32 @PnpDecodeFixedMemory(i8*) #1

declare dso_local i32 @PnpDecodeIrq(i8*) #1

declare dso_local i32 @PnpDecodeDma(i8*) #1

declare dso_local i32 @PnpDecodeIoPort(i8*) #1

declare dso_local i32 @PnpDecodeFixedIoPort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
