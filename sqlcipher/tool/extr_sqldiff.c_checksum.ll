; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_checksum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %14, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp uge i64 %12, 16
  br i1 %13, label %14, label %103

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add i32 %18, %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add i32 %23, %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 12
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add i32 %28, %32
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %39, %43
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 9
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add i32 %44, %48
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 13
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add i32 %49, %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add i32 %60, %64
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 10
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add i32 %65, %69
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 14
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add i32 %70, %74
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 7
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add i32 %81, %85
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 11
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add i32 %86, %90
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 15
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add i32 %91, %95
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 16
  store i8* %100, i8** %5, align 8
  %101 = load i64, i64* %4, align 8
  %102 = sub i64 %101, 16
  store i64 %102, i64* %4, align 8
  br label %11

103:                                              ; preds = %11
  br label %104

104:                                              ; preds = %107, %103
  %105 = load i64, i64* %4, align 8
  %106 = icmp uge i64 %105, 4
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %6, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 4
  store i8* %133, i8** %5, align 8
  %134 = load i64, i64* %4, align 8
  %135 = sub i64 %134, 4
  store i64 %135, i64* %4, align 8
  br label %104

136:                                              ; preds = %104
  %137 = load i32, i32* %8, align 4
  %138 = shl i32 %137, 8
  %139 = load i32, i32* %7, align 4
  %140 = shl i32 %139, 16
  %141 = add i32 %138, %140
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 %142, 24
  %144 = add i32 %141, %143
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load i64, i64* %4, align 8
  switch i64 %147, label %172 [
    i64 3, label %148
    i64 2, label %156
    i64 1, label %164
  ]

148:                                              ; preds = %136
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl i32 %152, 8
  %154 = load i32, i32* %9, align 4
  %155 = add i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %136, %148
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl i32 %160, 16
  %162 = load i32, i32* %9, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %136, %156
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %168, 24
  %170 = load i32, i32* %9, align 4
  %171 = add i32 %170, %169
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %136, %164
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
