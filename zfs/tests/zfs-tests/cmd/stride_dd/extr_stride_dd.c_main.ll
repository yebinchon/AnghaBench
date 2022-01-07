; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/stride_dd/extr_stride_dd.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/stride_dd/extr_stride_dd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifile = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@execname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@ofile = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@bsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@seek = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"output lseek\00", align 1
@count = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s: unexpected short read, read %d bytes, expected %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"%s: unexpected short write, wrote %d bytes, expected %d\0A\00", align 1
@stride = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"input lseek\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @parse_options(i32 %12, i8** %13)
  %15 = load i8*, i8** @ifile, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 (i8*, i32, ...) @open(i8* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** @execname, align 8
  %23 = load i8*, i8** @ifile, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @exit(i32 2) #3
  unreachable

27:                                               ; preds = %2
  %28 = load i8*, i8** @ofile, align 8
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 (i8*, i32, ...) @open(i8* %28, i32 %31, i32 438)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** @execname, align 8
  %38 = load i8*, i8** @ofile, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  %40 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @exit(i32 2) #3
  unreachable

42:                                               ; preds = %27
  %43 = load i32, i32* @bsize, align 4
  %44 = call i32 @posix_memalign(i8** %9, i32 4096, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** @execname, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @strerror(i32 %50)
  %52 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %51)
  %53 = call i32 @exit(i32 2) #3
  unreachable

54:                                               ; preds = %42
  %55 = load i32, i32* @seek, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @seek, align 4
  %60 = load i32, i32* @bsize, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* @SEEK_CUR, align 4
  %63 = call i32 @lseek(i32 %58, i32 %61, i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 @exit(i32 2) #3
  unreachable

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %54
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %152, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @count, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %155

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* @bsize, align 4
  %78 = call i32 @read(i32 %75, i8* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @bsize, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 @exit(i32 2) #3
  unreachable

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @bsize, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** @execname, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @bsize, align 4
  %99 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %92
  %101 = call i32 @exit(i32 2) #3
  unreachable

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* @bsize, align 4
  %106 = call i32 @write(i32 %103, i8* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @bsize, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %102
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** @execname, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @bsize, align 4
  %120 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i8* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %113
  %122 = call i32 @exit(i32 2) #3
  unreachable

123:                                              ; preds = %102
  %124 = load i32, i32* @stride, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @stride, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @bsize, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* @SEEK_CUR, align 4
  %133 = call i32 @lseek(i32 %127, i32 %131, i32 %132)
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %137 = call i32 @exit(i32 2) #3
  unreachable

138:                                              ; preds = %126
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @stride, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* @bsize, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* @SEEK_CUR, align 4
  %145 = call i32 @lseek(i32 %139, i32 %143, i32 %144)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %149 = call i32 @exit(i32 2) #3
  unreachable

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %123
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %70

155:                                              ; preds = %70
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @close(i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @close(i32 %160)
  ret i32 0
}

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @posix_memalign(i8**, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
