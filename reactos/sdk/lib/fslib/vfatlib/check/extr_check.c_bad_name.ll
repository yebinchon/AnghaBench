; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_bad_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_bad_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i8*, i32 }

@atari_format = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"*?\\/:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"*?<>|\22\\/:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"EA DATA  SF\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"WP ROOT  SF\00", align 1
@FAT_NO_83NAME = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i32 0, align 4
@interactive = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @bad_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_name(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* @atari_format, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  store i32 0, i32* %2, align 4
  br label %150

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FAT_NO_83NAME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %150

42:                                               ; preds = %33, %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FAT_NO_83NAME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %150

51:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %95, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MSDOS_NAME, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 127
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %56
  store i32 1, i32* %2, align 4
  br label %150

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sgt i32 %79, 127
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @strchr(i8* %85, i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 1, i32* %2, align 4
  br label %150

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %52

98:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %116

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %2, align 4
  br label %150

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %99

120:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 1, i32* %5, align 4
  br label %138

133:                                              ; preds = %124
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 1, i32* %2, align 4
  br label %150

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %132
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load i64, i64* @atari_format, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %150

149:                                              ; preds = %145, %142
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %148, %136, %114, %93, %72, %50, %41, %27
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
