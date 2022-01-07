; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_FindBaseConsonant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_FindBaseConsonant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32 (i32)*, i64)* @FindBaseConsonant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindBaseConsonant(i32 %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_7__* %4, i32 (i32)* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32 (i32)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i32 (i32)* %5, i32 (i32)** %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %17, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = load i32 (i32)*, i32 (i32)** %13, align 8
  %26 = call i64 @Consonant_is_ralf(i32 %20, i32* %21, i32* %22, i32* %23, %struct.TYPE_7__* %24, i32 (i32)* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %7
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %28, %7
  %39 = load i32 (i32)*, i32 (i32)** %13, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %39(i32 %45)
  %47 = call i64 @is_consonant(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %75, %49
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i32 (i32)*, i32 (i32)** %13, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %60(i32 %65)
  %67 = call i64 @is_consonant(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %78

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %15, align 4
  br label %53

78:                                               ; preds = %69, %53
  br label %79

79:                                               ; preds = %78, %38
  br label %80

80:                                               ; preds = %175, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = load i32 (i32)*, i32 (i32)** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i64 @Consonant_is_below_base_form(i32 %81, i32* %82, i32* %83, i32* %84, %struct.TYPE_7__* %85, i32 (i32)* %86, i64 %87)
  store i64 %88, i64* %16, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = load i32 (i32)*, i32 (i32)** %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i64 @Consonant_is_post_base_form(i32 %91, i32* %92, i32* %93, i32* %94, %struct.TYPE_7__* %95, i32 (i32)* %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = load i32 (i32)*, i32 (i32)** %13, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i64 @Consonant_is_pre_base_form(i32 %101, i32* %102, i32* %103, i32* %104, %struct.TYPE_7__* %105, i32 (i32)* %106, i64 %107)
  store i64 %108, i64* %17, align 8
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %100, %90, %80
  %111 = phi i1 [ true, %90 ], [ true, %80 ], [ %109, %100 ]
  br i1 %111, label %112, label %176

112:                                              ; preds = %110
  %113 = load i64, i64* %16, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %120, %115, %112
  %129 = load i64, i64* %17, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %136, %131, %128
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %147, 1
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %172, %144
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sge i32 %151, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %150
  %157 = load i32 (i32)*, i32 (i32)** %13, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 %157(i32 %162)
  %164 = call i64 @is_consonant(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %156
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  br label %175

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %15, align 4
  br label %150

175:                                              ; preds = %166, %150
  br label %80

176:                                              ; preds = %110
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %181, %176
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %187
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  store i32 -1, i32* %198, align 8
  br label %199

199:                                              ; preds = %196, %187
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  ret i32 %203
}

declare dso_local i64 @Consonant_is_ralf(i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32 (i32)*) #1

declare dso_local i64 @is_consonant(i32) #1

declare dso_local i64 @Consonant_is_below_base_form(i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32 (i32)*, i64) #1

declare dso_local i64 @Consonant_is_post_base_form(i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32 (i32)*, i64) #1

declare dso_local i64 @Consonant_is_pre_base_form(i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32 (i32)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
