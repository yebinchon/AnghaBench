; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_Chdirs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_Chdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i8* null, align 8
@kErrBadMagic = common dso_local global i32 0, align 4
@kErrInvalidDirParam = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@gRemoteCWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Chdirs(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @kErrBadParameter, align 4
  store i32 %13, i32* %3, align 4
  br label %161

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @kLibraryMagic, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @kErrBadMagic, align 4
  store i32 %22, i32* %3, align 4
  br label %161

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** @kErrInvalidDirParam, align 8
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** @kErrInvalidDirParam, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %161

34:                                               ; preds = %23
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %34
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %161

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %90

62:                                               ; preds = %46
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @IsLocalPathDelim(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74, %68
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @gRemoteCWD, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @PathCat(i8* %83, i32 %86, i32 %87, i8* %88)
  br label %99

90:                                               ; preds = %74, %62, %46
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @Strncpy(i8* %93, i8* %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %80
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %100, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @kErrBadParameter, align 4
  store i32 %111, i32* %3, align 4
  br label %161

112:                                              ; preds = %99
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @StrRemoveTrailingLocalPathDelim(i8* %113)
  br label %115

115:                                              ; preds = %157, %112
  %116 = load i8*, i8** %6, align 8
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = call i8* @StrFindLocalPathDelim(i8* %118)
  store i8* %119, i8** %6, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  store i8 0, i8* %123, align 1
  br label %125

125:                                              ; preds = %122, %115
  %126 = load i8*, i8** %6, align 8
  %127 = icmp eq i8* %126, null
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i8*, i8** %7, align 8
  br label %137

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi i8* [ %135, %134 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %136 ]
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 0, i32 1
  %143 = call i32 @nFTPChdirAndGetCWD(%struct.TYPE_4__* %129, i8* %138, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %137
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ false, %151 ], [ %156, %154 ]
  br i1 %158, label %115, label %159

159:                                              ; preds = %157
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %110, %44, %26, %21, %12
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @IsLocalPathDelim(i8 signext) #1

declare dso_local i32 @PathCat(i8*, i32, i32, i8*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i32) #1

declare dso_local i32 @StrRemoveTrailingLocalPathDelim(i8*) #1

declare dso_local i8* @StrFindLocalPathDelim(i8*) #1

declare dso_local i32 @nFTPChdirAndGetCWD(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
