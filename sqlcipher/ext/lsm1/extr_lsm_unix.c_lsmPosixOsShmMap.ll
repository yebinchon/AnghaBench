; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsShmMap.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsShmMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8**, i32 }
%struct.stat = type { i64 }

@LSM_SHM_CHUNK_SIZE = common dso_local global i32 0, align 4
@LSM_NOMEM_BKPT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8**)* @lsmPosixOsShmMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsShmMap(i32* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %10, align 8
  %19 = load i8**, i8*** %9, align 8
  store i8* null, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %131

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = call i8* @posixShmFile(%struct.TYPE_3__* %42)
  store i8* %43, i8** %16, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @LSM_NOMEM_BKPT, align 4
  store i32 %47, i32* %5, align 4
  br label %180

48:                                               ; preds = %41
  %49 = load i8*, i8** %16, align 8
  %50 = load i32, i32* @O_RDWR, align 4
  %51 = load i32, i32* @O_CREAT, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @open(i8* %49, i32 %52, i32 420)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @lsmFree(i32 %58, i8* %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %66, i32* %5, align 4
  br label %180

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %30
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @fstat(i64 %71, %struct.stat* %15)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %75, i32* %5, align 4
  br label %180

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i64 @ftruncate(i64 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %89, i32* %5, align 4
  br label %180

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %76
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 8, %99
  %101 = trunc i64 %100 to i32
  %102 = call i64 @lsmRealloc(i32 %94, i8** %97, i32 %101)
  %103 = inttoptr i64 %102 to i8**
  store i8** %103, i8*** %12, align 8
  %104 = load i8**, i8*** %12, align 8
  %105 = icmp ne i8** %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %91
  %107 = load i32, i32* @LSM_NOMEM_BKPT, align 4
  store i32 %107, i32* %5, align 4
  br label %180

108:                                              ; preds = %91
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %121, %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i8**, i8*** %12, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* null, i8** %120, align 8
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %112

124:                                              ; preds = %112
  %125 = load i8**, i8*** %12, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i8** %125, i8*** %127, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %124, %4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %170

140:                                              ; preds = %131
  %141 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %142 = load i32, i32* @PROT_READ, align 4
  %143 = load i32, i32* @PROT_WRITE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MAP_SHARED, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @LSM_SHM_CHUNK_SIZE, align 4
  %151 = mul nsw i32 %149, %150
  %152 = call i8* @mmap(i32 0, i32 %141, i32 %144, i32 %145, i64 %148, i32 %151)
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* %152, i8** %158, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %140
  %168 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %168, i32* %5, align 4
  br label %180

169:                                              ; preds = %140
  br label %170

170:                                              ; preds = %169, %131
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %9, align 8
  store i8* %177, i8** %178, align 8
  %179 = load i32, i32* @LSM_OK, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %170, %167, %106, %88, %74, %65, %46
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @posixShmFile(%struct.TYPE_3__*) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @lsmFree(i32, i8*) #1

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i64 @ftruncate(i64, i64) #1

declare dso_local i64 @lsmRealloc(i32, i8**, i32) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
