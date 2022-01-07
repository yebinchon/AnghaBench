; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c___csa_SetCW.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c___csa_SetCW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"no CSA found\00", align 1
@VLC_ENOOBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"invalid csa ck (it must be 16 chars long)\00", align 1
@VLC_EBADVAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"using CSA (de)scrambling with %s key=%x:%x:%x:%x:%x:%x:%x:%x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csa_SetCW(i32* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @VLC_ENOOBJ, align 4
  store i32 %18, i32* %5, align 4
  br label %116

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 88
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %37, %31, %19
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp ne i32 %42, 16
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @msg_Warn(i32* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @VLC_EBADVAR, align 4
  store i32 %47, i32* %5, align 4
  br label %116

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strtoull(i8* %49, i32* null, i32 16)
  store i32 %50, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %64, %48
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 8, %56
  %58 = sub nsw i32 56, %57
  %59 = ashr i32 %55, %58
  %60 = and i32 %59, 255
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  %82 = load i32, i32* %81, align 16
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %68, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %67
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %97 = call i32 @memcpy(i32 %95, i32* %96, i32 8)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %102 = call i32 @csa_ComputeKey(i32 %100, i32* %101)
  br label %114

103:                                              ; preds = %67
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %108 = call i32 @memcpy(i32 %106, i32* %107, i32 8)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %113 = call i32 @csa_ComputeKey(i32 %111, i32* %112)
  br label %114

114:                                              ; preds = %103, %92
  %115 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %44, %15
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @csa_ComputeKey(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
