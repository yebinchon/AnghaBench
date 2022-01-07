; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_vn_open.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_vn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.stat64 = type { i32, i32 }

@FCREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@vn_dumpdir = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_open(i8* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_3__** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.stat64, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_3__** %4, %struct.TYPE_3__*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @FCREAT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @stat64(i8* %28, %struct.stat64* %20)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %21, align 4
  store i32 %33, i32* %8, align 4
  br label %143

34:                                               ; preds = %27, %7
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @FCREAT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stat64, %struct.stat64* %20, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISBLK(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @O_DIRECT, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %39, %34
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @FCREAT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @umask(i32 0)
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @FREAD, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @open64(i8* %56, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  store i32 %66, i32* %8, align 4
  br label %143

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @FCREAT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @umask(i32 %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i8*, i8** @vn_dumpdir, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load i32, i32* @MAXPATHLEN, align 4
  %80 = load i32, i32* @UMEM_NOFAIL, align 4
  %81 = call i8* @umem_zalloc(i32 %79, i32 %80)
  store i8* %81, i8** %22, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = load i32, i32* @MAXPATHLEN, align 4
  %84 = load i8*, i8** @vn_dumpdir, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i8* @basename(i8* %85)
  %87 = call i32 @snprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %84, i8* %86)
  %88 = load i8*, i8** %22, align 8
  %89 = load i32, i32* @O_CREAT, align 4
  %90 = load i32, i32* @O_WRONLY, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @open64(i8* %88, i32 %91, i32 438)
  store i32 %92, i32* %17, align 4
  %93 = load i8*, i8** %22, align 8
  %94 = load i32, i32* @MAXPATHLEN, align 4
  %95 = call i32 @umem_free(i8* %93, i32 %94)
  %96 = load i32, i32* %17, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %78
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @close(i32 %100)
  %102 = load i32, i32* %21, align 4
  store i32 %102, i32* %8, align 4
  br label %143

103:                                              ; preds = %78
  br label %105

104:                                              ; preds = %75
  store i32 -1, i32* %17, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @fstat64_blk(i32 %106, %struct.stat64* %20)
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i32, i32* @errno, align 4
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @close(i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %115, %109
  %119 = load i32, i32* %21, align 4
  store i32 %119, i32* %8, align 4
  br label %143

120:                                              ; preds = %105
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @F_SETFD, align 4
  %123 = load i32, i32* @FD_CLOEXEC, align 4
  %124 = call i32 @fcntl(i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* @UMEM_NOFAIL, align 4
  %126 = call i8* @umem_zalloc(i32 16, i32 %125)
  %127 = bitcast i8* %126 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %127, %struct.TYPE_3__** %18, align 8
  %128 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  store %struct.TYPE_3__* %127, %struct.TYPE_3__** %128, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.stat64, %struct.stat64* %20, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @spa_strdup(i8* %136)
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %120, %118, %98, %64, %31
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i32 @stat64(i8*, %struct.stat64*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @open64(i8*, i32, i32) #1

declare dso_local i8* @umem_zalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @umem_free(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fstat64_blk(i32, %struct.stat64*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @spa_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
