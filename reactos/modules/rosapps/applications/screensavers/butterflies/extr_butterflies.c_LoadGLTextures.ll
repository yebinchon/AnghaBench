; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_LoadGLTextures.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_LoadGLTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@IDB_BUTTERFLY1 = common dso_local global i32 0, align 4
@IDB_BUTTERFLY2 = common dso_local global i32 0, align 4
@IDB_BUTTERFLY3 = common dso_local global i32 0, align 4
@texture = common dso_local global i32* null, align 8
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_CREATEDIBSECTION = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_BGR_EXT = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadGLTextures() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %6 = load i32, i32* @IDB_BUTTERFLY1, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @IDB_BUTTERFLY2, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @IDB_BUTTERFLY3, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32*, i32** @texture, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i32 @glGenTextures(i32 12, i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %61, %0
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 12
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = call i32 @GetModuleHandle(i32* null)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MAKEINTRESOURCE(i32 %23)
  %25 = load i32, i32* @IMAGE_BITMAP, align 4
  %26 = load i32, i32* @LR_CREATEDIBSECTION, align 4
  %27 = call i64 @LoadImage(i32 %19, i32 %24, i32 %25, i32 0, i32 0, i32 %26)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %18
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @GetObject(i64 %31, i32 12, %struct.TYPE_3__* %2)
  %33 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %34 = call i32 @glPixelStorei(i32 %33, i32 4)
  %35 = load i32, i32* @GL_TEXTURE_2D, align 4
  %36 = load i32*, i32** @texture, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @glBindTexture(i32 %35, i32 %40)
  %42 = load i32, i32* @GL_TEXTURE_2D, align 4
  %43 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %44 = load i32, i32* @GL_LINEAR, align 4
  %45 = call i32 @glTexParameteri(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @GL_TEXTURE_2D, align 4
  %47 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %48 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  %49 = call i32 @glTexParameteri(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @GL_TEXTURE_2D, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GL_BGR_EXT, align 4
  %56 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gluBuild2DMipmaps(i32 %50, i32 3, i32 %52, i32 %54, i32 %55, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %30, %18
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %14

64:                                               ; preds = %14
  ret void
}

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i64 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @gluBuild2DMipmaps(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
