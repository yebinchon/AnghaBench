; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_irc_syncbot.c_send_irc_group.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_irc_syncbot.c_send_irc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c" PRIVMSG\00", align 1
@current_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_irc_group(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1350
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %3
  br label %164

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 58
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %164

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %7, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %80, %34
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %70

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = icmp uge i32 %57, 3
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 58
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %83

69:                                               ; preds = %59, %56
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %38, i64 %78
  store i8 %76, i8* %79, align 1
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %39

83:                                               ; preds = %68, %39
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %38, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = alloca i8, i64 %89, align 16
  store i64 %89, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %91 = call i64 @strstr(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %14, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 1, i32* %15, align 4
  br label %161

96:                                               ; preds = %83
  store i8* %38, i8** %16, align 8
  store i8* %38, i8** %16, align 8
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i8*, i8** %16, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8*, i8** %16, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 33
  br label %106

106:                                              ; preds = %101, %97
  %107 = phi i1 [ false, %97 ], [ %105, %101 ]
  br i1 %107, label %108, label %121

108:                                              ; preds = %106
  %109 = load i8*, i8** %16, align 8
  %110 = load i8, i8* %109, align 1
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %90, i64 %112
  store i8 %110, i8* %113, align 1
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %108
  %117 = load i8*, i8** %16, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %16, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %97

121:                                              ; preds = %106
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %90, i64 %123
  store i8 58, i8* %124, align 1
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %90, i64 %128
  store i8 32, i8* %129, align 1
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, 2
  %134 = load i32, i32* %6, align 4
  %135 = icmp uge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  store i32 1, i32* %15, align 4
  br label %161

137:                                              ; preds = %121
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %90, i64 %139
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add i32 %147, 2
  %149 = sub i32 %146, %148
  %150 = call i32 @memcpy(i8* %140, i8* %145, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, 2
  %154 = sub i32 %151, %153
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %13, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* @current_group, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @tox_group_message_send(i32* %157, i32 %158, i8* %90, i32 %159)
  store i32 0, i32* %15, align 4
  br label %161

161:                                              ; preds = %137, %136, %95
  %162 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %15, align 4
  switch i32 %163, label %165 [
    i32 0, label %164
    i32 1, label %164
  ]

164:                                              ; preds = %25, %33, %161, %161
  ret void

165:                                              ; preds = %161
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @tox_group_message_send(i32*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
