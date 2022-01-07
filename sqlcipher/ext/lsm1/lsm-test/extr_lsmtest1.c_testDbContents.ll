; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_testDbContents.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_testDbContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testDbContents(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %146

39:                                               ; preds = %8
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %146

42:                                               ; preds = %39
  store i32* null, i32** %19, align 8
  %43 = call i32 @testControlDb(i32** %19)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32, i32* %18, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sle i32 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %67

54:                                               ; preds = %52
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @testDatasourceEntry(i32* %55, i32 %56, i8** %20, i32* %21, i8** %22, i32* %23)
  %58 = load i32*, i32** %19, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = load i32, i32* %21, align 4
  %61 = load i8*, i8** %22, align 8
  %62 = load i32, i32* %23, align 4
  %63 = call i32 @tdb_write(i32* %58, i8* %59, i32 %60, i8* %61, i32 %62)
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  br label %45

67:                                               ; preds = %52
  %68 = load i32, i32* %18, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %143

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %73, 16
  %75 = add nsw i32 %72, %74
  %76 = call i32 @testPrngValue(i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = srem i32 %76, %77
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 %81, 16
  %83 = add nsw i32 %80, %82
  %84 = call i32 @testPrngValue(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = srem i32 %84, %85
  store i32 %86, i32* %25, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %24, align 4
  %89 = call i32 @testDatasourceEntry(i32* %87, i32 %88, i8** %28, i32* %27, i8** null, i32* null)
  %90 = load i32, i32* %27, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i8* @testMalloc(i32 %91)
  store i8* %92, i8** %26, align 8
  %93 = load i8*, i8** %26, align 8
  %94 = load i8*, i8** %28, align 8
  %95 = load i32, i32* %27, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @memcpy(i8* %93, i8* %94, i32 %96)
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %25, align 4
  %100 = call i32 @testDatasourceEntry(i32* %98, i32 %99, i8** %28, i32* %29, i8** null, i32* null)
  %101 = load i32*, i32** %19, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @testScanCompare(i32* %101, i32* %102, i32 0, i8* null, i32 0, i8* null, i32 0, i32* %18)
  %104 = load i32*, i32** %19, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i8*, i8** %28, align 8
  %107 = load i32, i32* %29, align 4
  %108 = call i32 @testScanCompare(i32* %104, i32* %105, i32 0, i8* null, i32 0, i8* %106, i32 %107, i32* %18)
  %109 = load i32*, i32** %19, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i8*, i8** %26, align 8
  %112 = load i32, i32* %27, align 4
  %113 = call i32 @testScanCompare(i32* %109, i32* %110, i32 0, i8* %111, i32 %112, i8* null, i32 0, i32* %18)
  %114 = load i32*, i32** %19, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i8*, i8** %26, align 8
  %117 = load i32, i32* %27, align 4
  %118 = load i8*, i8** %28, align 8
  %119 = load i32, i32* %29, align 4
  %120 = call i32 @testScanCompare(i32* %114, i32* %115, i32 0, i8* %116, i32 %117, i8* %118, i32 %119, i32* %18)
  %121 = load i32*, i32** %19, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @testScanCompare(i32* %121, i32* %122, i32 1, i8* null, i32 0, i8* null, i32 0, i32* %18)
  %124 = load i32*, i32** %19, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i8*, i8** %28, align 8
  %127 = load i32, i32* %29, align 4
  %128 = call i32 @testScanCompare(i32* %124, i32* %125, i32 1, i8* null, i32 0, i8* %126, i32 %127, i32* %18)
  %129 = load i32*, i32** %19, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load i8*, i8** %26, align 8
  %132 = load i32, i32* %27, align 4
  %133 = call i32 @testScanCompare(i32* %129, i32* %130, i32 1, i8* %131, i32 %132, i8* null, i32 0, i32* %18)
  %134 = load i32*, i32** %19, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i8*, i8** %26, align 8
  %137 = load i32, i32* %27, align 4
  %138 = load i8*, i8** %28, align 8
  %139 = load i32, i32* %29, align 4
  %140 = call i32 @testScanCompare(i32* %134, i32* %135, i32 1, i8* %136, i32 %137, i8* %138, i32 %139, i32* %18)
  %141 = load i8*, i8** %26, align 8
  %142 = call i32 @testFree(i8* %141)
  br label %143

143:                                              ; preds = %70, %67
  %144 = load i32*, i32** %19, align 8
  %145 = call i32 @tdb_close(i32* %144)
  br label %146

146:                                              ; preds = %143, %39, %8
  store i32 0, i32* %17, align 4
  br label %147

147:                                              ; preds = %192, %146
  %148 = load i32, i32* %18, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %151, %152
  br label %154

154:                                              ; preds = %150, %147
  %155 = phi i1 [ false, %147 ], [ %153, %150 ]
  br i1 %155, label %156, label %195

156:                                              ; preds = %154
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* %17, align 4
  store i32 %161, i32* %30, align 4
  br label %173

162:                                              ; preds = %156
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %12, align 4
  %165 = shl i32 %164, 8
  %166 = add nsw i32 %163, %165
  %167 = load i32, i32* %13, align 4
  %168 = shl i32 %167, 16
  %169 = add nsw i32 %166, %168
  %170 = call i32 @testPrngValue(i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = srem i32 %170, %171
  store i32 %172, i32* %30, align 4
  br label %173

173:                                              ; preds = %162, %160
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %30, align 4
  %176 = call i32 @testDatasourceEntry(i32* %174, i32 %175, i8** %31, i32* %32, i8** %33, i32* %34)
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %30, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %30, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %173
  store i8* null, i8** %33, align 8
  store i32 -1, i32* %34, align 4
  br label %185

185:                                              ; preds = %184, %180
  %186 = load i32*, i32** %9, align 8
  %187 = load i8*, i8** %31, align 8
  %188 = load i32, i32* %32, align 4
  %189 = load i8*, i8** %33, align 8
  %190 = load i32, i32* %34, align 4
  %191 = call i32 @testFetch(i32* %186, i8* %187, i32 %188, i8* %189, i32 %190, i32* %18)
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %147

195:                                              ; preds = %154
  %196 = load i32, i32* %18, align 4
  %197 = load i32*, i32** %16, align 8
  store i32 %196, i32* %197, align 4
  ret void
}

declare dso_local i32 @testControlDb(i32**) #1

declare dso_local i32 @testDatasourceEntry(i32*, i32, i8**, i32*, i8**, i32*) #1

declare dso_local i32 @tdb_write(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @testPrngValue(i32) #1

declare dso_local i8* @testMalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @testScanCompare(i32*, i32*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testFree(i8*) #1

declare dso_local i32 @tdb_close(i32*) #1

declare dso_local i32 @testFetch(i32*, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
