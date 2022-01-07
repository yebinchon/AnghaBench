; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_copy.c_copy_tree_at_full.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_copy.c_copy_tree_at_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@COPY_DEPTH_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_tree_at_full(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.stat, align 4
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %15, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %30 = call i64 @fstatat(i32 %27, i8* %28, %struct.stat* %22, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load i32, i32* @errno, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %126

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @S_ISREG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i8*, i8** %15, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i8*, i8** %21, align 8
  %50 = call i32 @fd_copy_regular(i32 %41, i8* %42, %struct.stat* %22, i32 %43, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48, i8* %49)
  store i32 %50, i32* %11, align 4
  br label %126

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @COPY_DEPTH_MAX, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i8*, i8** %21, align 8
  %70 = call i32 @fd_copy_directory(i32 %57, i8* %58, %struct.stat* %22, i32 %59, i8* %60, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32* null, i32 %67, i32 %68, i8* %69)
  store i32 %70, i32* %11, align 4
  br label %126

71:                                               ; preds = %51
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISLNK(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @fd_copy_symlink(i32 %77, i8* %78, %struct.stat* %22, i32 %79, i8* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  br label %126

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISFIFO(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @fd_copy_fifo(i32 %91, i8* %92, %struct.stat* %22, i32 %93, i8* %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %126

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @S_ISBLK(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @S_ISCHR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @S_ISSOCK(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109, %104, %99
  %115 = load i32, i32* %12, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @fd_copy_node(i32 %115, i8* %116, %struct.stat* %22, i32 %117, i8* %118, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %11, align 4
  br label %126

123:                                              ; preds = %109
  %124 = load i32, i32* @EOPNOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %123, %114, %90, %76, %56, %40, %32
  %127 = load i32, i32* %11, align 4
  ret i32 %127
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @fd_copy_regular(i32, i8*, %struct.stat*, i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fd_copy_directory(i32, i8*, %struct.stat*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @fd_copy_symlink(i32, i8*, %struct.stat*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @fd_copy_fifo(i32, i8*, %struct.stat*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @fd_copy_node(i32, i8*, %struct.stat*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
