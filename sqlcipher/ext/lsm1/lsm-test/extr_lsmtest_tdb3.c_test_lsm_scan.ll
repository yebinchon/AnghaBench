; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_test_lsm_scan.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_test_lsm_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEEK_LE = common dso_local global i32 0, align 4
@LSM_SEEK_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i8*, i32, void (i8*, i8*, i32, i8*, i32)*)* @test_lsm_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_lsm_scan(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, void (i8*, i8*, i32, i8*, i32)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca void (i8*, i8*, i32, i8*, i32)*, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store void (i8*, i8*, i32, i8*, i32)* %7, void (i8*, i8*, i32, i8*, i32)** %17, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %18, align 8
  store i32* null, i32** %20, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @lsm_csr_open(i32 %36, i32** %19)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* @LSM_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %21, align 4
  store i32 %42, i32* %9, align 4
  br label %190

43:                                               ; preds = %33
  br label %49

44:                                               ; preds = %8
  %45 = load i32, i32* @LSM_OK, align 4
  store i32 %45, i32* %21, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %19, align 8
  br label %49

49:                                               ; preds = %44, %43
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32*, i32** %19, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @LSM_SEEK_LE, align 4
  %63 = call i32 @lsm_csr_seek(i32* %59, i8* %60, i32 %61, i32 %62)
  store i32 %63, i32* %21, align 4
  br label %70

64:                                               ; preds = %55
  %65 = load i32*, i32** %19, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @LSM_SEEK_GE, align 4
  %69 = call i32 @lsm_csr_seek(i32* %65, i8* %66, i32 %67, i32 %68)
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %52, %49
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8*, i8** %15, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32*, i32** %19, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @LSM_SEEK_LE, align 4
  %82 = call i32 @lsm_csr_seek(i32* %78, i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %21, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @lsm_csr_last(i32* %84)
  store i32 %85, i32* %21, align 4
  br label %86

86:                                               ; preds = %83, %77
  br label %100

87:                                               ; preds = %71
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32*, i32** %19, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @LSM_SEEK_GE, align 4
  %95 = call i32 @lsm_csr_seek(i32* %91, i8* %92, i32 %93, i32 %94)
  store i32 %95, i32* %21, align 4
  br label %99

96:                                               ; preds = %87
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @lsm_csr_first(i32* %97)
  store i32 %98, i32* %21, align 4
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %179, %100
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* @LSM_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32*, i32** %19, align 8
  %107 = call i64 @lsm_csr_valid(i32* %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i1 [ false, %101 ], [ %108, %105 ]
  br i1 %110, label %111, label %180

111:                                              ; preds = %109
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @lsm_csr_key(i32* %112, i8** %22, i32* %23)
  %114 = load i32*, i32** %19, align 8
  %115 = call i32 @lsm_csr_value(i32* %114, i8** %24, i32* %25)
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %111
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %22, align 8
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @MIN(i32 %124, i32 %125)
  %127 = call i32 @memcmp(i8* %122, i8* %123, i32 %126)
  store i32 %127, i32* %26, align 4
  %128 = load i32, i32* %26, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %26, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %23, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %121
  br label %180

138:                                              ; preds = %133, %130
  br label %164

139:                                              ; preds = %118, %111
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %139
  %143 = load i8*, i8** %15, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %163

145:                                              ; preds = %142
  %146 = load i8*, i8** %15, align 8
  %147 = load i8*, i8** %22, align 8
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @MIN(i32 %148, i32 %149)
  %151 = call i32 @memcmp(i8* %146, i8* %147, i32 %150)
  store i32 %151, i32* %26, align 4
  %152 = load i32, i32* %26, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %26, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %23, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157, %145
  br label %180

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %142, %139
  br label %164

164:                                              ; preds = %163, %138
  %165 = load void (i8*, i8*, i32, i8*, i32)*, void (i8*, i8*, i32, i8*, i32)** %17, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load i8*, i8** %22, align 8
  %168 = load i32, i32* %23, align 4
  %169 = load i8*, i8** %24, align 8
  %170 = load i32, i32* %25, align 4
  call void %165(i8* %166, i8* %167, i32 %168, i8* %169, i32 %170)
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i32*, i32** %19, align 8
  %175 = call i32 @lsm_csr_prev(i32* %174)
  store i32 %175, i32* %21, align 4
  br label %179

176:                                              ; preds = %164
  %177 = load i32*, i32** %19, align 8
  %178 = call i32 @lsm_csr_next(i32* %177)
  store i32 %178, i32* %21, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %101

180:                                              ; preds = %161, %137, %109
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32*, i32** %19, align 8
  %187 = call i32 @lsm_csr_close(i32* %186)
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32, i32* %21, align 4
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %188, %41
  %191 = load i32, i32* %9, align 4
  ret i32 %191
}

declare dso_local i32 @lsm_csr_open(i32, i32**) #1

declare dso_local i32 @lsm_csr_seek(i32*, i8*, i32, i32) #1

declare dso_local i32 @lsm_csr_last(i32*) #1

declare dso_local i32 @lsm_csr_first(i32*) #1

declare dso_local i64 @lsm_csr_valid(i32*) #1

declare dso_local i32 @lsm_csr_key(i32*, i8**, i32*) #1

declare dso_local i32 @lsm_csr_value(i32*, i8**, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @lsm_csr_prev(i32*) #1

declare dso_local i32 @lsm_csr_next(i32*) #1

declare dso_local i32 @lsm_csr_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
