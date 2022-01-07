; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonAppendString.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonAppendString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8* }

@jsonAppendString.aSpecial = internal constant <{ [14 x i8], [18 x i8] }> <{ [14 x i8] c"\00\00\00\00\00\00\00\00btn\00fr", [18 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64)* @jsonAppendString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonAppendString(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = add nsw i64 %13, 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, 2
  %23 = call i64 @jsonGrow(%struct.TYPE_4__* %20, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %230

26:                                               ; preds = %19, %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 34, i8* %34, align 1
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %209, %26
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %212

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %8, align 1
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 34
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %51, label %83

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %119, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %55, %56
  %58 = add nsw i64 %57, 3
  %59 = load i64, i64* %7, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %52
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 3
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i64 @jsonGrow(%struct.TYPE_4__* %66, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %230

74:                                               ; preds = %65, %52
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 92, i8* %82, align 1
  br label %199

83:                                               ; preds = %47
  %84 = load i8, i8* %8, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sle i32 %85, 31
  br i1 %86, label %87, label %198

87:                                               ; preds = %83
  %88 = call i32 @assert(i32 1)
  %89 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 8), align 8
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 98
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 12), align 4
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 102
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 10), align 2
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 110
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 13), align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 114
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 9), align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 116
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i8, i8* %8, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %87
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [14 x i8], [18 x i8] }>* @jsonAppendString.aSpecial to [32 x i8]*), i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  store i8 %123, i8* %8, align 1
  br label %52

124:                                              ; preds = %87
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = add nsw i64 %127, %128
  %130 = add nsw i64 %129, 7
  %131 = load i64, i64* %7, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %124
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = load i64, i64* %6, align 8
  %140 = add nsw i64 %139, 7
  %141 = load i64, i64* %7, align 8
  %142 = sub nsw i64 %140, %141
  %143 = call i64 @jsonGrow(%struct.TYPE_4__* %138, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %230

146:                                              ; preds = %137, %124
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 92, i8* %154, align 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 117, i8* %162, align 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 48, i8* %170, align 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %175, align 8
  %178 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 48, i8* %178, align 1
  %179 = load i8, i8* %8, align 1
  %180 = zext i8 %179 to i32
  %181 = ashr i32 %180, 4
  %182 = add nsw i32 48, %181
  %183 = trunc i32 %182 to i8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = getelementptr inbounds i8, i8* %186, i64 %189
  store i8 %183, i8* %191, align 1
  %192 = load i8, i8* %8, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %193, 15
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  store i8 %197, i8* %8, align 1
  br label %198

198:                                              ; preds = %146, %83
  br label %199

199:                                              ; preds = %198, %74
  %200 = load i8, i8* %8, align 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 %200, i8* %208, align 1
  br label %209

209:                                              ; preds = %199
  %210 = load i64, i64* %7, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %7, align 8
  br label %35

212:                                              ; preds = %35
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = getelementptr inbounds i8, i8* %215, i64 %218
  store i8 34, i8* %220, align 1
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp slt i64 %223, %226
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  br label %230

230:                                              ; preds = %212, %145, %73, %25
  ret void
}

declare dso_local i64 @jsonGrow(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
