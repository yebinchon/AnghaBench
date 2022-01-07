; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nsc.c_nscdec.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nsc.c_nscdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"input string less than 15 characters\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to get NSC encoding type\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"encoding type %d is not supported\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"load_byte failed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Length is 0\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"iconv failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @nscdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nscdec(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %14, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp slt i32 %17, 15
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @msg_Err(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

22:                                               ; preds = %2
  %23 = call i64 @load_byte(i8 zeroext 1, i8* %11, i8** %14, i8* null, i8* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 (i32*, i8*, ...) @msg_Err(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

28:                                               ; preds = %22
  %29 = load i8, i8* %11, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8, i8* %11, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (i32*, i8*, ...) @msg_Err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i8* null, i8** %3, align 8
  br label %133

41:                                               ; preds = %32, %28
  store i8 0, i8* %9, align 1
  store i8 0, i8* %8, align 1
  %42 = load i8, i8* %11, align 1
  %43 = call i64 @load_byte(i8 zeroext %42, i8* %7, i8** %14, i8* %8, i8* %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 (i32*, i8*, ...) @msg_Err(i32* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp ult i32 %50, 4
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8, i8* %11, align 1
  %54 = call i64 @load_byte(i8 zeroext %53, i8* %7, i8** %14, i8* %8, i8* %9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 (i32*, i8*, ...) @msg_Err(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %49

63:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  store i32 4, i32* %6, align 4
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i8, i8* %11, align 1
  %69 = call i64 @load_byte(i8 zeroext %68, i8* %7, i8** %14, i8* %8, i8* %9)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 (i32*, i8*, ...) @msg_Err(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

74:                                               ; preds = %67
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = sub i32 %77, 1
  %79 = mul i32 %78, 8
  %80 = shl i32 %76, %79
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 (i32*, i8*, ...) @msg_Err(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = call i8* @malloc(i32 %93)
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i8* null, i8** %3, align 8
  br label %133

98:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i8, i8* %11, align 1
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i64 @load_byte(i8 zeroext %104, i8* %108, i8** %14, i8* %8, i8* %9)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 (i32*, i8*, ...) @msg_Err(i32* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @free(i8* %114)
  store i8* null, i8** %3, align 8
  br label %133

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %99

120:                                              ; preds = %99
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i8* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %121, i32 %122)
  store i8* %123, i8** %13, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i8*, i8** %13, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 (i32*, i8*, ...) @msg_Err(i32* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %133

131:                                              ; preds = %120
  %132 = load i8*, i8** %13, align 8
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %131, %128, %111, %97, %89, %71, %56, %45, %36, %25, %19
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i64 @load_byte(i8 zeroext, i8*, i8**, i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @FromCharset(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
