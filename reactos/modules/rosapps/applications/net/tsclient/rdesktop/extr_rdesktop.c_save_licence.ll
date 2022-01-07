; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_save_licence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_save_licence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s/.rdesktop\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"%s/.rdesktop/licence.%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".new\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_licence(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %102

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %17, %21
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 20
  %25 = trunc i64 %24 to i32
  %26 = call i64 @xmalloc(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @mkdir(i8* %31, i32 448)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %15
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EEXIST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @perror(i8* %39)
  br label %102

41:                                               ; preds = %34, %15
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 5
  %52 = trunc i64 %51 to i32
  %53 = call i64 @xmalloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @O_WRONLY, align 4
  %62 = load i32, i32* @O_CREAT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @O_TRUNC, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @open(i8* %60, i32 %65, i32 384)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %41
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @perror(i8* %70)
  br label %102

72:                                               ; preds = %41
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @write(i32 %73, i8* %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @perror(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @unlink(i8* %82)
  br label %95

84:                                               ; preds = %72
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @rename(i8* %85, i8* %86)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @perror(i8* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @unlink(i8* %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %79
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @xfree(i8* %98)
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @xfree(i8* %100)
  br label %102

102:                                              ; preds = %95, %69, %38, %14
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
