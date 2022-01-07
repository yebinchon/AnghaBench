; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_RemoteGlobCollapse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_RemoteGlobCollapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@kGlobChars = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_8__*)* @RemoteGlobCollapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoteGlobCollapse(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %49, %2
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i8*, i8** @kGlobChars, align 8
  store i8* %26, i8** %13, align 8
  br label %27

27:                                               ; preds = %42, %25
  %28 = load i8*, i8** %13, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i8*, i8** %13, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %13, align 8
  br label %27

45:                                               ; preds = %40, %27
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %55

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %12, align 8
  store i8 %52, i8* %53, align 1
  br label %21

55:                                               ; preds = %48, %21
  %56 = load i8*, i8** %12, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  store i64 %61, i64* %15, align 8
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %5, align 8
  br label %66

66:                                               ; preds = %126, %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %128

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i64 @strncmp(i8* %75, i8* %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %69
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = call i32 @STRNCPY(i8* %81, i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = call i8* @strchr(i8* %88, i8 signext 47)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i8*, i8** %8, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 92)
  store i8* %94, i8** %11, align 8
  br label %95

95:                                               ; preds = %92, %80
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8*, i8** %11, align 8
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i64 @STREQ(i8* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = call %struct.TYPE_7__* @RemoveLine(%struct.TYPE_8__* %111, %struct.TYPE_7__* %112)
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %6, align 8
  br label %124

114:                                              ; preds = %105, %100
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @STRNCPY(i8* %115, i8* %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @sprintf(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %121, i8* %122)
  br label %124

124:                                              ; preds = %114, %110
  br label %125

125:                                              ; preds = %124, %69
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %5, align 8
  br label %66

128:                                              ; preds = %66
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @RemoveLine(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
