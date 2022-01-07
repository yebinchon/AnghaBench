; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_TPDUSend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_TPDUSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iovec = type { i8**, i32 }

@.str = private unnamed_addr constant [31 x i8] c"cannot write to CAM device: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8**, i64)* @TPDUSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TPDUSend(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca [9 x i8*], align 16
  %13 = alloca i8**, align 8
  %14 = alloca [2 x %struct.iovec], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 0
  store i8** %15, i8*** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8**, i8*** %13, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %13, align 8
  store i8* %16, i8** %17, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr i8, i8* %19, i64 1
  %21 = load i8**, i8*** %13, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %13, align 8
  store i8* %20, i8** %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8**, i8*** %13, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %13, align 8
  store i8* %23, i8** %24, align 8
  %26 = load i8**, i8*** %13, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 1
  %29 = call i8** @SetLength(i8** %26, i64 %28)
  store i8** %29, i8*** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr i8, i8* %30, i64 1
  %32 = load i8**, i8*** %13, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %13, align 8
  store i8* %31, i8** %32, align 8
  %34 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 0
  %35 = load i8**, i8*** %13, align 8
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 0
  %37 = ptrtoint i8** %35 to i64
  %38 = ptrtoint i8** %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @Dump(i32 1, i8** %34, i32 %41)
  %43 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 0
  %45 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 0
  store i8** %45, i8*** %44, align 16
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 1
  %47 = load i8**, i8*** %13, align 8
  %48 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 0
  %49 = ptrtoint i8** %47 to i64
  %50 = ptrtoint i8** %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %46, align 8
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i64 1
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 0
  %56 = load i8**, i8*** %10, align 8
  %57 = bitcast i8** %56 to i8*
  %58 = bitcast i8* %57 to i8**
  store i8** %58, i8*** %55, align 16
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 1
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %66 = call i64 @writev(i32 %64, %struct.iovec* %65, i32 2)
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %5
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @vlc_strerror_c(i32 %72)
  %74 = call i32 @msg_Err(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %5
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i8** @SetLength(i8**, i64) #1

declare dso_local i32 @Dump(i32, i8**, i32) #1

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
