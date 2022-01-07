; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_is_binary.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_is_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%PDF-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_binary(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 512
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i64 [ 512, %12 ], [ %14, %13 ]
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %211

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %22, 3
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 239
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 187
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 191
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %211

43:                                               ; preds = %36, %30, %24, %21
  %44 = load i64, i64* %5, align 8
  %45 = icmp uge i64 %44, 5
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %211

51:                                               ; preds = %46, %43
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %200, %51
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %203

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %211

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %69, 7
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i32 %76, 14
  br i1 %77, label %78, label %198

78:                                               ; preds = %71, %64
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp slt i32 %83, 32
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sgt i32 %90, 127
  br i1 %91, label %92, label %198

92:                                               ; preds = %85, %78
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sgt i32 %97, 193
  br i1 %98, label %99, label %129

99:                                               ; preds = %92
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp slt i32 %104, 224
  br i1 %105, label %106, label %129

106:                                              ; preds = %99
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, 1
  %109 = load i64, i64* %7, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %9, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp sgt i32 %118, 127
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load i8*, i8** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp slt i32 %125, 192
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %200

128:                                              ; preds = %120, %111
  br label %185

129:                                              ; preds = %106, %99, %92
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp sgt i32 %134, 223
  br i1 %135, label %136, label %184

136:                                              ; preds = %129
  %137 = load i8*, i8** %8, align 8
  %138 = load i64, i64* %9, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %141, 240
  br i1 %142, label %143, label %184

143:                                              ; preds = %136
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 2
  %146 = load i64, i64* %7, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %184

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %9, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sgt i32 %155, 127
  br i1 %156, label %157, label %183

157:                                              ; preds = %148
  %158 = load i8*, i8** %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp slt i32 %162, 192
  br i1 %163, label %164, label %183

164:                                              ; preds = %157
  %165 = load i8*, i8** %8, align 8
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp sgt i32 %170, 127
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load i8*, i8** %8, align 8
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, 1
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp slt i32 %178, 192
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %9, align 8
  br label %200

183:                                              ; preds = %172, %164, %157, %148
  br label %184

184:                                              ; preds = %183, %143, %136, %129
  br label %185

185:                                              ; preds = %184, %128
  %186 = load i64, i64* %6, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %6, align 8
  %188 = load i64, i64* %9, align 8
  %189 = icmp uge i64 %188, 32
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load i64, i64* %6, align 8
  %192 = mul i64 %191, 100
  %193 = load i64, i64* %7, align 8
  %194 = udiv i64 %192, %193
  %195 = icmp ugt i64 %194, 10
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i32 1, i32* %3, align 4
  br label %211

197:                                              ; preds = %190, %185
  br label %198

198:                                              ; preds = %197, %85, %71
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %180, %127
  %201 = load i64, i64* %9, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %9, align 8
  br label %52

203:                                              ; preds = %52
  %204 = load i64, i64* %6, align 8
  %205 = mul i64 %204, 100
  %206 = load i64, i64* %7, align 8
  %207 = udiv i64 %205, %206
  %208 = icmp ugt i64 %207, 10
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 1, i32* %3, align 4
  br label %211

210:                                              ; preds = %203
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %210, %209, %196, %63, %50, %42, %20
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
