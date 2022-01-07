; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_PutBookmark.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_PutBookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not save bookmark.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not rename bookmark file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PutBookmark(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32* @OpenTmpBookmarkFile(i32 0)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %103

16:                                               ; preds = %2
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @STRNCPY(i8* %17, i32 %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %23 = call i32 @STRNCAT(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %11, align 8
  %26 = call i32* @OpenBookmarkFile(i32* null)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %67, %29
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @FGets(i8* %31, i32 256, i32* %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @WriteBmLine(%struct.TYPE_4__* %42, i32* %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @stderr, align 4
  %49 = call i64 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @fclose(i32* %51)
  br label %53

53:                                               ; preds = %47, %41
  store i32 1, i32* %10, align 4
  br label %67

54:                                               ; preds = %35
  %55 = load i32*, i32** %7, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %58 = call i64 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = call i64 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @fclose(i32* %64)
  store i32 -1, i32* %3, align 4
  br label %103

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %53
  br label %30

68:                                               ; preds = %30
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @CloseBookmarkFile(i32* %69)
  br label %71

71:                                               ; preds = %68, %16
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @WriteBmLine(%struct.TYPE_4__* %75, i32* %76, i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @stderr, align 4
  %82 = call i64 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32*, i32** %7, align 8
  %85 = call i64 @fclose(i32* %84)
  store i32 -1, i32* %3, align 4
  br label %103

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @fclose(i32* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @stderr, align 4
  %93 = call i64 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %94 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %103

95:                                               ; preds = %87
  %96 = call i64 (...) @SwapBookmarkFiles()
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @stderr, align 4
  %100 = call i64 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %101 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %103

102:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %98, %91, %80, %60, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32* @OpenTmpBookmarkFile(i32) #1

declare dso_local i32 @STRNCPY(i8*, i32) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @OpenBookmarkFile(i32*) #1

declare dso_local i32* @FGets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @WriteBmLine(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @CloseBookmarkFile(i32*) #1

declare dso_local i64 @SwapBookmarkFiles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
