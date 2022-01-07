; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_pls.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_pls.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"[playlist]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pls file version: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"numberofentries\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pls should have %d entries\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%*[^0-9]%d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"couldn't find number of items\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"no file= part found for item %d\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"unknown key found in pls file: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %17

17:                                               ; preds = %156, %87, %76, %66, %59, %46, %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @vlc_stream_ReadLine(i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %159

23:                                               ; preds = %17
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @IsASCII(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @IsUTF8(i8* %31)
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %30, %26, %23
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @FromLatin1(i8* %37)
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8*, i8** %15, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strncasecmp(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  br label %17

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  br label %62

59:                                               ; preds = %49
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  br label %17

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @msg_Dbg(%struct.TYPE_5__* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @free(i8* %70)
  br label %17

72:                                               ; preds = %62
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strcasecmp(i8* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i8* @atoi(i8* %78)
  %80 = call i32 @msg_Dbg(%struct.TYPE_5__* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @free(i8* %81)
  br label %17

83:                                               ; preds = %72
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @sscanf(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %16)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  br label %17

92:                                               ; preds = %83
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %11, align 4
  br label %124

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32* @input_item_New(i8* %105, i8* %106)
  store i32* %107, i32** %12, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @input_item_node_AppendItem(i32* %108, i32* %109)
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @input_item_Release(i32* %111)
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @free(i8* %113)
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %119

115:                                              ; preds = %101
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %104
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @free(i8* %120)
  store i8* null, i8** %5, align 8
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %97
  br label %124

124:                                              ; preds = %123, %95
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @strncasecmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @ProcessMRL(i8* %131, i32 %134)
  store i8* %135, i8** %7, align 8
  store i8* %135, i8** %8, align 8
  br label %156

136:                                              ; preds = %124
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @strncasecmp(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %10, align 8
  %144 = call i8* @strdup(i8* %143)
  store i8* %144, i8** %5, align 8
  br label %155

145:                                              ; preds = %136
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @strncasecmp(i8* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  br label %154

150:                                              ; preds = %145
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %150, %149
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %155, %128
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @free(i8* %157)
  br label %17

159:                                              ; preds = %17
  %160 = load i8*, i8** %7, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = call i32* @input_item_New(i8* %163, i8* %164)
  store i32* %165, i32** %12, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @input_item_node_AppendItem(i32* %166, i32* %167)
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @input_item_Release(i32* %169)
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @free(i8* %171)
  br label %177

173:                                              ; preds = %159
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %173, %162
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @free(i8* %178)
  store i8* null, i8** %5, align 8
  %180 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %180
}

declare dso_local i8* @vlc_stream_ReadLine(i32) #1

declare dso_local i32 @IsASCII(i8*) #1

declare dso_local i32 @IsUTF8(i8*) #1

declare dso_local i8* @FromLatin1(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i8* @ProcessMRL(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
