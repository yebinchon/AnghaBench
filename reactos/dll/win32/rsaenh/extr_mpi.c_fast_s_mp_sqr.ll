; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_fast_s_mp_sqr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_fast_s_mp_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }

@MP_WARRAY = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i64 0, align 8
@MP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)* @fast_s_mp_sqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_s_mp_sqr(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %22 = load i32, i32* @MP_WARRAY, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mp_grow(%struct.TYPE_6__* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @MP_OKAY, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %194

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %2
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %144, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %147

52:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MIN(i32 %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %13, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %20, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @MIN(i32 %78, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = ashr i32 %86, 1
  %88 = call i32 @MIN(i32 %82, i32 %87)
  store i32 %88, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %103, %52
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load i32*, i32** %13, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %13, align 8
  %96 = load i32, i32* %94, align 4
  %97 = load i32*, i32** %20, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %98, i32** %20, align 8
  %99 = load i32, i32* %97, align 4
  %100 = mul nsw i32 %96, %99
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %89

106:                                              ; preds = %89
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %106
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = ashr i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %123, %131
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %19, align 4
  br label %135

135:                                              ; preds = %115, %106
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %25, i64 %138
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i64, i64* @DIGIT_BIT, align 8
  %142 = trunc i64 %141 to i32
  %143 = ashr i32 %140, %142
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %48

147:                                              ; preds = %48
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %6, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %21, align 8
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %176, %147
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %25, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @MP_MASK, align 4
  %173 = and i32 %171, %172
  %174 = load i32*, i32** %21, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %21, align 8
  store i32 %173, i32* %174, align 4
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %163

179:                                              ; preds = %163
  br label %180

180:                                              ; preds = %187, %179
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i32*, i32** %21, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %21, align 8
  store i32 0, i32* %185, align 4
  br label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %180

190:                                              ; preds = %180
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %192 = call i32 @mp_clamp(%struct.TYPE_6__* %191)
  %193 = load i32, i32* @MP_OKAY, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %194

194:                                              ; preds = %190, %44
  %195 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mp_grow(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @mp_clamp(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
