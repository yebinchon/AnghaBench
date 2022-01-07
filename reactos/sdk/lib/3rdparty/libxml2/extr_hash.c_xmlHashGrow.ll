; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashGrow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashGrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct._xmlHashEntry* }
%struct._xmlHashEntry = type { i64, %struct._xmlHashEntry*, i32, i32, i32 }

@xmlGenericErrorContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @xmlHashGrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlHashGrow(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlHashEntry*, align 8
  %10 = alloca %struct._xmlHashEntry*, align 8
  %11 = alloca %struct._xmlHashEntry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %194

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %194

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 16384
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %194

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %28, align 8
  store %struct._xmlHashEntry* %29, %struct._xmlHashEntry** %11, align 8
  %30 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %31 = icmp eq %struct._xmlHashEntry* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %194

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call %struct._xmlHashEntry* @xmlMalloc(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store %struct._xmlHashEntry* %38, %struct._xmlHashEntry** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %42, align 8
  %44 = icmp eq %struct._xmlHashEntry* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store %struct._xmlHashEntry* %46, %struct._xmlHashEntry** %48, align 8
  store i32 -1, i32* %3, align 4
  br label %194

49:                                               ; preds = %33
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memset(%struct._xmlHashEntry* %52, i32 0, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %111, %49
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %61
  %66 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %66, i64 %68
  %70 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %111

74:                                               ; preds = %65
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %76, i64 %78
  %80 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %82, i64 %84
  %86 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %88, i64 %90
  %92 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @xmlHashComputeKey(%struct.TYPE_4__* %75, i32 %81, i32 %87, i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %97, i64 %98
  %100 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %100, i64 %102
  %104 = call i32 @memcpy(%struct._xmlHashEntry* %99, %struct._xmlHashEntry* %103, i32 4)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %107, i64 %108
  %110 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %109, i32 0, i32 1
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %110, align 8
  br label %111

111:                                              ; preds = %74, %73
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %61

114:                                              ; preds = %61
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %188, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %191

119:                                              ; preds = %115
  %120 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %120, i64 %122
  %124 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %123, i32 0, i32 1
  %125 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %124, align 8
  store %struct._xmlHashEntry* %125, %struct._xmlHashEntry** %9, align 8
  br label %126

126:                                              ; preds = %185, %119
  %127 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %128 = icmp ne %struct._xmlHashEntry* %127, null
  br i1 %128, label %129, label %187

129:                                              ; preds = %126
  %130 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %131 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %130, i32 0, i32 1
  %132 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %131, align 8
  store %struct._xmlHashEntry* %132, %struct._xmlHashEntry** %10, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %135 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %138 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %141 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @xmlHashComputeKey(%struct.TYPE_4__* %133, i32 %136, i32 %139, i32 %142)
  store i64 %143, i64* %6, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %145, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %146, i64 %147
  %149 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %129
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %155, i64 %156
  %158 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %159 = call i32 @memcpy(%struct._xmlHashEntry* %157, %struct._xmlHashEntry* %158, i32 4)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %162, i64 %163
  %165 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %164, i32 0, i32 1
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %165, align 8
  %166 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %167 = call i32 @xmlFree(%struct._xmlHashEntry* %166)
  br label %185

168:                                              ; preds = %129
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %171, i64 %172
  %174 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %173, i32 0, i32 1
  %175 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %174, align 8
  %176 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %177 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %176, i32 0, i32 1
  store %struct._xmlHashEntry* %175, %struct._xmlHashEntry** %177, align 8
  %178 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %180, align 8
  %182 = load i64, i64* %6, align 8
  %183 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %181, i64 %182
  %184 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %183, i32 0, i32 1
  store %struct._xmlHashEntry* %178, %struct._xmlHashEntry** %184, align 8
  br label %185

185:                                              ; preds = %168, %152
  %186 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8
  store %struct._xmlHashEntry* %186, %struct._xmlHashEntry** %9, align 8
  br label %126

187:                                              ; preds = %126
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %115

191:                                              ; preds = %115
  %192 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8
  %193 = call i32 @xmlFree(%struct._xmlHashEntry* %192)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %191, %45, %32, %22, %18, %14
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct._xmlHashEntry* @xmlMalloc(i32) #1

declare dso_local i32 @memset(%struct._xmlHashEntry*, i32, i32) #1

declare dso_local i64 @xmlHashComputeKey(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct._xmlHashEntry*, %struct._xmlHashEntry*, i32) #1

declare dso_local i32 @xmlFree(%struct._xmlHashEntry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
