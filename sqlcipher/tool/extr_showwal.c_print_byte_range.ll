; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_print_byte_range.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_print_byte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c" %03x: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" %04x: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %05x: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" %06x: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" %08x: \00", align 1
@stdout = common dso_local global i32 0, align 4
@perLine = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @print_byte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_byte_range(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %12, %13
  %15 = and i32 %14, -4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %43

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = and i32 %21, -65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %42

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = and i32 %28, -1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = and i32 %35, -16777216
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %40

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %17
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %128, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %132

48:                                               ; preds = %44
  %49 = load i32, i32* @stdout, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50, i32 %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %80, %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @perLine, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %79

68:                                               ; preds = %59
  %69 = load i32, i32* @stdout, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %68, %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %55

83:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %122, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @perLine, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @stdout, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %121

97:                                               ; preds = %88
  %98 = load i32, i32* @stdout, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @ISPRINT(i8 zeroext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %97
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  br label %118

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117, %108
  %119 = phi i32 [ %116, %108 ], [ 46, %117 ]
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %94
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %84

125:                                              ; preds = %84
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @perLine, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %44

132:                                              ; preds = %44
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @ISPRINT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
