; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mjpeg.c_CheckMimeHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mjpeg.c_CheckMimeHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"cannot peek\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"data shortage\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"no EOL\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Multipart MIME detected, using separator: %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"separator %s does not match %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Content-Type:\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s, image/jpeg is expected\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"discard MIME header: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @CheckMimeHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMimeHeader(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 -1, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i32 @Peek(%struct.TYPE_9__* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @msg_Err(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %164

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i32 @msg_Err(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %164

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  store i32 0, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %164

43:                                               ; preds = %35, %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = call i8* @GetLine(%struct.TYPE_9__* %52, i32* %7)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp eq i8* null, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = call i32 @msg_Err(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %164

59:                                               ; preds = %43
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @msg_Dbg(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  br label %90

73:                                               ; preds = %59
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %74, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %82, i8* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %87, %64
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = call i8* @GetLine(%struct.TYPE_9__* %92, i32* %7)
  store i8* %93, i8** %8, align 8
  br label %94

94:                                               ; preds = %147, %91
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %97, %94
  %103 = phi i1 [ false, %94 ], [ %101, %97 ]
  br i1 %103, label %104, label %152

104:                                              ; preds = %102
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strncasecmp(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %143, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 13
  store i8* %110, i8** %9, align 8
  br label %111

111:                                              ; preds = %130, %108
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load i8*, i8** %9, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 9
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i1 [ true, %116 ], [ %125, %121 ]
  br label %128

128:                                              ; preds = %126, %111
  %129 = phi i1 [ false, %111 ], [ %127, %126 ]
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  br label %111

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  %135 = call i64 @strncasecmp(i8* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 (%struct.TYPE_9__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_9__* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %139)
  store i32 0, i32* %6, align 4
  br label %142

141:                                              ; preds = %133
  store i32 1, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %137
  br label %147

143:                                              ; preds = %104
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @msg_Dbg(%struct.TYPE_9__* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %142
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = call i8* @GetLine(%struct.TYPE_9__* %150, i32* %7)
  store i8* %151, i8** %8, align 8
  br label %94

152:                                              ; preds = %102
  %153 = load i8*, i8** %8, align 8
  %154 = icmp eq i8* null, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = call i32 @msg_Err(%struct.TYPE_9__* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %164

158:                                              ; preds = %152
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 @free(i8* %159)
  %161 = load i32, i32* %7, align 4
  %162 = load i32*, i32** %5, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %158, %155, %56, %41, %26, %18
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @Peek(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @GetLine(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
