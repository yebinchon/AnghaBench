; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/get_diff/extr_get_diff.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/get_diff/extr_get_diff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEV_BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Incorrect number of arguments.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Filename missing.\00", align 1
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"open1 failed\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Redacted filename missing.\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"open2 failed\00", align 1
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"pread failed\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"%lld,%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load i32, i32* @DEV_BSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @DEV_BSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @usage(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @usage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @O_LARGEFILE, align 4
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @open(i8* %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @exit(i32 1) #4
  unreachable

45:                                               ; preds = %35
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @usage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* @O_LARGEFILE, align 4
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @open(i8* %53, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @exit(i32 1) #4
  unreachable

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %126, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @DEV_BSIZE, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @pread(i32 %64, i8* %20, i32 %65, i64 %66)
  store i64 %67, i64* %16, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %130

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @DEV_BSIZE, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @pread(i32 %70, i8* %23, i32 %71, i64 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EIO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, i8* %20, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = sext i8 %81 to i32
  %83 = xor i32 %82, -1
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %84, i8* %85, align 16
  br label %89

86:                                               ; preds = %75
  %87 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i32 @exit(i32 1) #4
  unreachable

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i64, i64* %16, align 8
  %92 = call i64 @memcmp(i8* %20, i8* %23, i64 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* @stdout, align 4
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %99, i64 %100)
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %103, %104
  %106 = icmp eq i64 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  store i64 0, i64* %7, align 8
  br label %109

109:                                              ; preds = %97, %94
  store i64 0, i64* %6, align 8
  br label %126

110:                                              ; preds = %90
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add nsw i64 %117, %118
  %120 = icmp eq i64 %116, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %115, %109
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %8, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %8, align 8
  br label %63

130:                                              ; preds = %63
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i64, i64* %7, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* @stdout, align 4
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %136, %133, %130
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @close(i32 %144)
  store i32 0, i32* %3, align 4
  %146 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @pread(i32, i8*, i32, i64) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
