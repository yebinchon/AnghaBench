; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_MkDirs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_MkDirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stat = type { i32 }

@F_OK = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOCAL_PATH_DELIM = common dso_local global i8 0, align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MkDirs(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.Stat, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @F_OK, align 4
  %15 = call i32 @access(i8* %13, i32 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @Stat(i8* %18, %struct.Stat* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %155

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Stat, %struct.Stat* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISDIR(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOTDIR, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %155

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %155

30:                                               ; preds = %2
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncpy(i8* %31, i8* %32, i32 512)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 511
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %155

40:                                               ; preds = %30
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %42 = call i8* @StrRFindLocalPathDelim(i8* %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @mkdir(i8* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %155

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %69, %56
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %62 = icmp ugt i8* %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @IsLocalPathDelim(i8 signext %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %8, align 8
  br label %59

72:                                               ; preds = %68, %59
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %76 = call i8* @StrRFindLocalPathDelim(i8* %75)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mkdir(i8* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %155

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %50
  br label %86

86:                                               ; preds = %85
  store i8* null, i8** %9, align 8
  br label %87

87:                                               ; preds = %118, %86
  %88 = load i8*, i8** %8, align 8
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %90 = load i32, i32* @F_OK, align 4
  %91 = call i32 @access(i8* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i8, i8* @LOCAL_PATH_DELIM, align 1
  %96 = load i8*, i8** %9, align 8
  store i8 %95, i8* %96, align 1
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8, i8* @LOCAL_PATH_DELIM, align 1
  %102 = load i8*, i8** %8, align 8
  store i8 %101, i8* %102, align 1
  br label %119

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  store i8* %104, i8** %9, align 8
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %106 = call i8* @StrRFindLocalPathDelim(i8* %105)
  store i8* %106, i8** %8, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i8, i8* @LOCAL_PATH_DELIM, align 1
  %114 = load i8*, i8** %9, align 8
  store i8 %113, i8* %114, align 1
  br label %115

115:                                              ; preds = %112, %109
  %116 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %117 = getelementptr inbounds i8, i8* %116, i64 -1
  store i8* %117, i8** %8, align 8
  br label %119

118:                                              ; preds = %103
  br label %87

119:                                              ; preds = %115, %100
  br label %120

120:                                              ; preds = %150, %119
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = call i8* @StrFindLocalPathDelim(i8* %122)
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %126 = icmp eq i8* %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = call i8* @StrFindLocalPathDelim(i8* %131)
  store i8* %132, i8** %9, align 8
  br label %133

133:                                              ; preds = %127, %120
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %136, %133
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @mkdir(i8* %139, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %155

146:                                              ; preds = %138
  %147 = load i8*, i8** %9, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %154

150:                                              ; preds = %146
  %151 = load i8, i8* @LOCAL_PATH_DELIM, align 1
  %152 = load i8*, i8** %9, align 8
  store i8 %151, i8* %152, align 1
  %153 = load i8*, i8** %9, align 8
  store i8* %153, i8** %8, align 8
  br label %120

154:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %144, %79, %45, %38, %29, %27, %21
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i64 @Stat(i8*, %struct.Stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @StrRFindLocalPathDelim(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @IsLocalPathDelim(i8 signext) #1

declare dso_local i8* @StrFindLocalPathDelim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
