; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_config_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@FWRITE = common dso_local global i32 0, align 4
@FTRUNC = common dso_local global i32 0, align 4
@FCREAT = common dso_local global i32 0, align 4
@FOFFMAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@CRCREAT = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@RLIM64_INFINITY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@FSYNC = common dso_local global i32 0, align 4
@RMFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @spa_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_config_write(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @FWRITE, align 4
  %13 = load i32, i32* @FTRUNC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FCREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FOFFMAX, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = call i32 @spa_config_remove(%struct.TYPE_4__* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @fnvlist_pack(i32* %31, i64* %6)
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = load i32, i32* @KM_SLEEP, align 4
  %35 = call i8* @kmem_zalloc(i32 %33, i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @MAXPATHLEN, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @UIO_SYSSPACE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @CRCREAT, align 4
  %46 = call i32 @vn_open(i8* %42, i32 %43, i32 %44, i32 420, i32** %8, i32 %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %30
  %50 = load i32, i32* @UIO_WRITE, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @UIO_SYSSPACE, align 4
  %55 = load i32, i32* @RLIM64_INFINITY, align 4
  %56 = load i32, i32* @kcred, align 4
  %57 = call i32 @vn_rdwr(i32 %50, i32* %51, i8* %52, i64 %53, i32 0, i32 %54, i32 0, i32 %55, i32 %56, i32* null)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @FSYNC, align 4
  %63 = load i32, i32* @kcred, align 4
  %64 = call i32 @VOP_FSYNC(i32* %61, i32 %62, i32 %63, i32* null)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60, %49
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @UIO_SYSSPACE, align 4
  %74 = call i32 @vn_rename(i8* %69, i8* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @kcred, align 4
  %79 = call i32 @VOP_CLOSE(i32* %76, i32 %77, i32 1, i32 0, i32 %78, i32* null)
  br label %80

80:                                               ; preds = %75, %30
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* @UIO_SYSSPACE, align 4
  %83 = load i32, i32* @RMFILE, align 4
  %84 = call i32 @vn_remove(i8* %81, i32 %82, i32 %83)
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @fnvlist_pack_free(i8* %85, i64 %86)
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* @MAXPATHLEN, align 4
  %90 = call i32 @kmem_free(i8* %88, i32 %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %28
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @spa_config_remove(%struct.TYPE_4__*) #1

declare dso_local i8* @fnvlist_pack(i32*, i64*) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @vn_open(i8*, i32, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @vn_rdwr(i32, i32*, i8*, i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VOP_FSYNC(i32*, i32, i32, i32*) #1

declare dso_local i32 @vn_rename(i8*, i8*, i32) #1

declare dso_local i32 @VOP_CLOSE(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vn_remove(i8*, i32, i32) #1

declare dso_local i32 @fnvlist_pack_free(i8*, i64) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
