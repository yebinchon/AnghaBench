; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_describeContent.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_describeContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"blob(%lld)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"txt(%lld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*)* @describeContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @describeContent(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i8 32, i8* %15, align 1
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @decodeVarint(i8* %20, i64* %11)
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %4, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %29, %31
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %198, %3
  %34 = load i64, i64* %10, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ule i8* %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %210

42:                                               ; preds = %40
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @decodeVarint(i8* %43, i64* %11)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %5, align 8
  %57 = load i8, i8* %15, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  store i8 44, i8* %15, align 1
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %42
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %198

69:                                               ; preds = %42
  %70 = load i64, i64* %11, align 8
  %71 = icmp uge i64 %70, 1
  br i1 %71, label %72, label %151

72:                                               ; preds = %69
  %73 = load i64, i64* %11, align 8
  %74 = icmp ule i64 %73, 6
  br i1 %74, label %75, label %151

75:                                               ; preds = %72
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i64
  store i64 %79, i64* %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  %82 = load i64, i64* %11, align 8
  switch i64 %82, label %147 [
    i64 6, label %83
    i64 5, label %100
    i64 4, label %117
    i64 3, label %127
    i64 2, label %137
  ]

83:                                               ; preds = %75
  %84 = load i64, i64* %12, align 8
  %85 = shl i64 %84, 16
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = add i64 %85, %91
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i64
  %97 = add i64 %92, %96
  store i64 %97, i64* %12, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %99, i8** %13, align 8
  br label %100

100:                                              ; preds = %75, %83
  %101 = load i64, i64* %12, align 8
  %102 = shl i64 %101, 16
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 8
  %108 = sext i32 %107 to i64
  %109 = add i64 %102, %108
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = add i64 %109, %113
  store i64 %114, i64* %12, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %75, %100
  %118 = load i64, i64* %12, align 8
  %119 = shl i64 %118, 8
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  %124 = add i64 %119, %123
  store i64 %124, i64* %12, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %75, %117
  %128 = load i64, i64* %12, align 8
  %129 = shl i64 %128, 8
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = add i64 %129, %133
  store i64 %134, i64* %12, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %13, align 8
  br label %137

137:                                              ; preds = %75, %127
  %138 = load i64, i64* %12, align 8
  %139 = shl i64 %138, 8
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = add i64 %139, %143
  store i64 %144, i64* %12, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %13, align 8
  br label %147

147:                                              ; preds = %137, %75
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %12, align 8
  %150 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %149)
  br label %197

151:                                              ; preds = %72, %69
  %152 = load i64, i64* %11, align 8
  %153 = icmp eq i64 %152, 7
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 8
  store i8* %158, i8** %13, align 8
  br label %196

159:                                              ; preds = %151
  %160 = load i64, i64* %11, align 8
  %161 = icmp eq i64 %160, 8
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 (i8*, i8*, ...) @sprintf(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %195

165:                                              ; preds = %159
  %166 = load i64, i64* %11, align 8
  %167 = icmp eq i64 %166, 9
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %194

171:                                              ; preds = %165
  %172 = load i64, i64* %11, align 8
  %173 = icmp uge i64 %172, 12
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load i64, i64* %11, align 8
  %176 = sub i64 %175, 12
  %177 = udiv i64 %176, 2
  store i64 %177, i64* %16, align 8
  %178 = load i64, i64* %11, align 8
  %179 = and i64 %178, 1
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i8*, i8** %6, align 8
  %183 = load i64, i64* %16, align 8
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %183)
  br label %189

185:                                              ; preds = %174
  %186 = load i8*, i8** %6, align 8
  %187 = load i64, i64* %16, align 8
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %187)
  br label %189

189:                                              ; preds = %185, %181
  %190 = load i64, i64* %16, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %13, align 8
  br label %193

193:                                              ; preds = %189, %171
  br label %194

194:                                              ; preds = %193, %168
  br label %195

195:                                              ; preds = %194, %162
  br label %196

196:                                              ; preds = %195, %154
  br label %197

197:                                              ; preds = %196, %147
  br label %198

198:                                              ; preds = %197, %66
  %199 = load i8*, i8** %6, align 8
  %200 = call i64 @strlen(i8* %199)
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i8*, i8** %6, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %6, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %7, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %7, align 8
  br label %33

210:                                              ; preds = %40
  %211 = load i64, i64* %7, align 8
  ret i64 %211
}

declare dso_local i32 @decodeVarint(i8*, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
