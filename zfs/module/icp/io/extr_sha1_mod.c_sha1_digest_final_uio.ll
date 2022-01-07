; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_digest_final_uio.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_digest_final_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }

@UIO_SYSSPACE = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@SHA1_DIGEST_LENGTH = common dso_local global i64 0, align 8
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64, i32*)* @sha1_digest_final_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_digest_final_uio(i32* %0, %struct.TYPE_7__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIO_SYSSPACE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %29, i32* %5, align 4
  br label %205

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %32, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %40, %49
  br label %51

51:                                               ; preds = %39, %31
  %52 = phi i1 [ false, %31 ], [ %50, %39 ]
  br i1 %52, label %53, label %67

53:                                               ; preds = %51
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %31

67:                                               ; preds = %51
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %76, i32* %5, align 4
  br label %205

77:                                               ; preds = %67
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %80, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %77
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @SHA1Final(i32* %96, i32* %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @bcopy(i32* %99, i32* %110, i64 %111)
  br label %127

113:                                              ; preds = %91
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @SHA1Final(i32* %124, i32* %125)
  br label %127

127:                                              ; preds = %113, %95
  br label %203

128:                                              ; preds = %77
  %129 = load i64, i64* @SHA1_DIGEST_LENGTH, align 8
  %130 = call i8* @llvm.stacksave()
  store i8* %130, i8** %12, align 8
  %131 = alloca i32, i64 %129, align 16
  store i64 %129, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %132 = load i64, i64* %8, align 8
  store i64 %132, i64* %15, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @SHA1Final(i32* %131, i32* %133)
  br label %135

135:                                              ; preds = %148, %128
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ult i64 %136, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i64, i64* %15, align 8
  %145 = icmp ugt i64 %144, 0
  br label %146

146:                                              ; preds = %143, %135
  %147 = phi i1 [ false, %135 ], [ %145, %143 ]
  br i1 %147, label %148, label %185

148:                                              ; preds = %146
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load i64, i64* %15, align 8
  %161 = call i64 @MIN(i64 %159, i64 %160)
  store i64 %161, i64* %16, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i32, i32* %131, i64 %162
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i64, i64* %16, align 8
  %176 = call i32 @bcopy(i32* %163, i32* %174, i64 %175)
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* %15, align 8
  %179 = sub i64 %178, %177
  store i64 %179, i64* %15, align 8
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %11, align 8
  %182 = load i64, i64* %16, align 8
  %183 = load i64, i64* %14, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %14, align 8
  store i64 0, i64* %10, align 8
  br label %135

185:                                              ; preds = %146
  %186 = load i64, i64* %11, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %186, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %185
  %194 = load i64, i64* %15, align 8
  %195 = icmp ugt i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %197, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %199

198:                                              ; preds = %193, %185
  store i32 0, i32* %17, align 4
  br label %199

199:                                              ; preds = %198, %196
  %200 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %17, align 4
  switch i32 %201, label %207 [
    i32 0, label %202
    i32 1, label %205
  ]

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %202, %127
  %204 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %203, %199, %75, %28
  %206 = load i32, i32* %5, align 4
  ret i32 %206

207:                                              ; preds = %199
  unreachable
}

declare dso_local i32 @SHA1Final(i32*, i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @MIN(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
