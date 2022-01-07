; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_itml.c_parse_dict.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_itml.c_parse_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (i32*, i8*, i8*)*, i32 (i32*, i32*, i32*, i32*, i8*, i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"unexpected element <%s>\00", align 1
@COMPLEX_CONTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"there's no open element left for <%s>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unexpected end of XML data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*)* @parse_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dict(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %12, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %149, %6
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @xml_ReaderNextNode(i32* %20, i8** %14)
  store i32 %21, i32* %13, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %150

23:                                               ; preds = %19
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %149 [
    i32 129, label %25
    i32 128, label %81
    i32 130, label %94
  ]

25:                                               ; preds = %23
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %17, align 8
  br label %27

27:                                               ; preds = %42, %25
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8*, i8** %14, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %33, i8* %36)
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %32, %27
  %40 = phi i1 [ false, %27 ], [ %38, %32 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 1
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %17, align 8
  br label %27

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 (i32*, i8*, ...) @msg_Err(i32* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %153

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @COMPLEX_CONTENT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32 (i32*, i32*, i32*, i32*, i8*, i32*)*, i32 (i32*, i32*, i32*, i32*, i8*, i32*)** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 %64(i32* %65, i32* %66, i32* null, i32* %67, i8* %70, i32* null)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %17, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @FREENULL(i8* %74)
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @FREENULL(i8* %76)
  br label %79

78:                                               ; preds = %60
  br label %153

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %54
  br label %149

81:                                               ; preds = %23
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %14, align 8
  %85 = call i8* @strdup(i8* %84)
  store i8* %85, i8** %15, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = icmp ne i8* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @unlikely(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %153

93:                                               ; preds = %81
  br label %149

94:                                               ; preds = %23
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @strcmp(i8* %95, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 1, i32* %18, align 4
  br label %153

100:                                              ; preds = %94
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %102 = icmp ne %struct.TYPE_5__* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @strcmp(i8* %111, i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108, %103, %100
  %116 = load i32*, i32** %7, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 (i32*, i8*, ...) @msg_Err(i32* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  br label %153

119:                                              ; preds = %108
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %15, align 8
  %129 = call i8* @strdup(i8* %128)
  store i8* %129, i8** %16, align 8
  br label %146

130:                                              ; preds = %119
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %133, align 8
  %135 = icmp ne i32 (i32*, i8*, i8*)* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %139, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 %140(i32* %141, i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %136, %130
  br label %146

146:                                              ; preds = %145, %125
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @FREENULL(i8* %147)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %17, align 8
  br label %149

149:                                              ; preds = %23, %146, %93, %80
  br label %19

150:                                              ; preds = %19
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 (i32*, i8*, ...) @msg_Err(i32* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %115, %99, %92, %78, %50
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i8*, i8** %16, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i32, i32* %18, align 4
  ret i32 %158
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
