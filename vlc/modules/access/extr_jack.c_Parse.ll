; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_jack.c_Parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_jack.c_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"channels=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ports=\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Parse(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @strdup(i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @strtol(i8* %24, i8** %5, i32 0)
  %26 = call i8* @abs(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %67

29:                                               ; preds = %1
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %29
  %35 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 58)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 58)
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %53

50:                                               ; preds = %34
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @strndup(i8* %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %5, align 8
  br label %66

63:                                               ; preds = %29
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = call i32 @msg_Warn(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %53
  br label %67

67:                                               ; preds = %66, %20
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 58
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  br label %68

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 58
  br i1 %87, label %88, label %167

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %165, %88
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  store i8 0, i8* %90, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %94 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = call i32 @strtol(i8* %100, i8** %5, i32 0)
  %102 = call i8* @abs(i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %143

105:                                              ; preds = %89
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %108 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %139, label %110

110:                                              ; preds = %105
  %111 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i8*, i8** %5, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i8* @strchr(i8* %115, i8 signext 58)
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i8*, i8** %5, align 8
  %120 = call i8* @strchr(i8* %119, i8 signext 58)
  %121 = load i8*, i8** %5, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  br label %129

126:                                              ; preds = %110
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @strlen(i8* %127)
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %118
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i8* @strndup(i8* %130, i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %5, align 8
  br label %142

139:                                              ; preds = %105
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = call i32 @msg_Warn(%struct.TYPE_5__* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %129
  br label %143

143:                                              ; preds = %142, %96
  br label %144

144:                                              ; preds = %156, %143
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 58
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i1 [ false, %144 ], [ %153, %149 ]
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  br label %144

159:                                              ; preds = %154
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %166

165:                                              ; preds = %159
  br label %89

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %83
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @free(i8* %168)
  ret void
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @abs(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
