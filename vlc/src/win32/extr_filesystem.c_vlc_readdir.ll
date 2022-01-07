; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_filesystem.c_vlc_readdir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_filesystem.c_vlc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct._wdirent = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%c:\\\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_readdir(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._wdirent*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @free(i8* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %67

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  store i8* null, i8** %2, align 8
  br label %102

28:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %29

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = xor i64 %43, -1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %52, 26
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = add i32 65, %58
  %60 = trunc i32 %59 to i8
  %61 = call i32 @asprintf(i8** %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %40
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %40
  br label %98

67:                                               ; preds = %1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %97

80:                                               ; preds = %67
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call %struct._wdirent* @_wreaddir(i32* %83)
  store %struct._wdirent* %84, %struct._wdirent** %7, align 8
  %85 = load %struct._wdirent*, %struct._wdirent** %7, align 8
  %86 = icmp ne %struct._wdirent* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct._wdirent*, %struct._wdirent** %7, align 8
  %89 = getelementptr inbounds %struct._wdirent, %struct._wdirent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @FromWide(i32 %90)
  br label %93

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i8* [ %91, %87 ], [ null, %92 ]
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %73
  br label %98

98:                                               ; preds = %97, %66
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %2, align 8
  br label %102

102:                                              ; preds = %98, %25
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct._wdirent* @_wreaddir(i32*) #1

declare dso_local i8* @FromWide(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
