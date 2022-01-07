; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_decode_btree_page.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_decode_btree_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"index interior node\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"table interior node\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index leaf\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"table leaf\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Decode of btree page %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Offset to first freeblock\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Number of cells on this page\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Offset to cell content area\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Fragmented byte count\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Right child\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c" key: lx=left-child n=payload-size r=rowid\0A\00", align 1
@pagesize = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" %03x: cell[%d] %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c" %03x: %.64s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @decode_btree_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_btree_page(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [30 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  switch i32 %24, label %29 [
    i32 2, label %25
    i32 5, label %26
    i32 10, label %27
    i32 13, label %28
  ]

25:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %29

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %29

27:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %29

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %29

29:                                               ; preds = %4, %28, %27, %26, %25
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %42 [
    i32 99, label %40
    i32 109, label %41
  ]

40:                                               ; preds = %35
  store i32 1, i32* %14, align 4
  br label %42

41:                                               ; preds = %35
  store i32 1, i32* %15, align 4
  br label %42

42:                                               ; preds = %35, %41, %40
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %30

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @print_decode_line(i8* %48, i32 0, i32 1, i32 0, i8* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @print_decode_line(i8* %51, i32 1, i32 2, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @print_decode_line(i8* %53, i32 3, i32 2, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = mul nsw i32 %58, 256
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %10, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @print_decode_line(i8* %65, i32 5, i32 2, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @print_decode_line(i8* %67, i32 7, i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %80, label %74

74:                                               ; preds = %45
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 5
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %45
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @print_decode_line(i8* %81, i32 8, i32 4, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 12, i32* %13, align 4
  br label %84

83:                                               ; preds = %74
  store i32 8, i32* %13, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %89
  %93 = load i32, i32* @pagesize, align 4
  %94 = call i8* @malloc(i32 %93)
  store i8* %94, i8** %16, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load i32, i32* @pagesize, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @memset(i8* %95, i8 signext 46, i64 %97)
  %99 = load i8*, i8** %16, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @memset(i8* %99, i8 signext 49, i64 %101)
  %103 = load i8*, i8** %16, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = call i32 @memset(i8* %106, i8 signext 72, i64 %108)
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = mul nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = call i32 @memset(i8* %115, i8 signext 80, i64 %118)
  br label %120

120:                                              ; preds = %92, %89
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %202, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %205

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %127, 2
  %129 = add nsw i32 %126, %128
  store i32 %129, i32* %17, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = mul nsw i32 %135, 256
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %136, %143
  store i32 %144, i32* %17, align 4
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @describeCell(i8 zeroext %147, i8* %153, i32 %154, i8** %18)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %125
  %159 = load i8*, i8** %16, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = call i32 @memset(i8* %162, i8 signext 42, i64 %164)
  %166 = load i8*, i8** %16, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 91, i8* %169, align 1
  %170 = load i8*, i8** %16, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %171, %172
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %170, i64 %175
  store i8 93, i8* %176, align 1
  %177 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  %180 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %181 = call i64 @strlen(i8* %180)
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %19, align 4
  %185 = sub nsw i32 %184, 2
  %186 = icmp sle i32 %183, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %158
  %188 = load i8*, i8** %16, align 8
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @memcpy(i8* %192, i8* %193, i32 %194)
  br label %196

196:                                              ; preds = %187, %158
  br label %197

197:                                              ; preds = %196, %125
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i8*, i8** %18, align 8
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %198, i32 %199, i8* %200)
  br label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %121

205:                                              ; preds = %121
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  store i32 0, i32* %11, align 4
  br label %209

209:                                              ; preds = %220, %208
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @pagesize, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  %214 = load i32, i32* %11, align 4
  %215 = load i8*, i8** %16, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %214, i8* %218)
  br label %220

220:                                              ; preds = %213
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 64
  store i32 %222, i32* %11, align 4
  br label %209

223:                                              ; preds = %209
  %224 = load i8*, i8** %16, align 8
  %225 = call i32 @free(i8* %224)
  br label %226

226:                                              ; preds = %223, %205
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_decode_line(i8*, i32, i32, i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @describeCell(i8 zeroext, i8*, i32, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
