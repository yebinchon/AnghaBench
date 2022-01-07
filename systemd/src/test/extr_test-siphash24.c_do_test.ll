; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-siphash24.c_do_test.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-siphash24.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.siphash, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast %struct.siphash* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @siphash24(i32* %12, i64 %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %17, -6833708440360172059
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @siphash24_init(%struct.siphash* %7, i32* %21)
  %23 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 8388350548712186997
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 7737605742629119589
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 7746018054687388513
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 8893317812261383291
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @siphash24_compress(i32* %47, i64 %48, %struct.siphash* %7)
  %50 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 5332668335157565920
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %58, 960101207715568036
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 7155291096292130109
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  %68 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, -6547585767667410488
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert_se(i32 %72)
  %74 = call i32 @siphash24_finalize(%struct.siphash* %7)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, -6833708440360172059
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert_se(i32 %78)
  %80 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, -667424205779841039
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert_se(i32 %84)
  %86 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %88, 6105076025163569463
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_se(i32 %90)
  %92 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %94, 1961373283477337434
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert_se(i32 %96)
  %98 = getelementptr inbounds %struct.siphash, %struct.siphash* %7, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %100, 1735217956439975545
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %151, %3
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %5, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %154

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %147, %109
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %5, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %150

116:                                              ; preds = %111
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @siphash24_init(%struct.siphash* %7, i32* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = call i32 @siphash24_compress(i32* %119, i64 %121, %struct.siphash* %7)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = call i32 @siphash24_compress(i32* %126, i64 %130, %struct.siphash* %7)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i64, i64* %5, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = sub i64 %136, %138
  %140 = call i32 @siphash24_compress(i32* %135, i64 %139, %struct.siphash* %7)
  %141 = call i32 @siphash24_finalize(%struct.siphash* %7)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp eq i64 %143, -6833708440360172059
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert_se(i32 %145)
  br label %147

147:                                              ; preds = %116
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %111

150:                                              ; preds = %111
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %104

154:                                              ; preds = %104
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @siphash24(i32*, i64, i32*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @siphash24_init(%struct.siphash*, i32*) #2

declare dso_local i32 @siphash24_compress(i32*, i64, %struct.siphash*) #2

declare dso_local i32 @siphash24_finalize(%struct.siphash*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
