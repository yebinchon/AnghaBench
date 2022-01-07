; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_getcomponent.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_getcomponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid p=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @getcomponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getcomponent(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %3
  %18 = load i32, i32* @ENOENT, align 4
  %19 = call i32 @SET_ERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %169

20:                                               ; preds = %11
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strpbrk(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %169

40:                                               ; preds = %31, %20
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %43, %40
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 64
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i8* @strpbrk(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %56, %50
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @SET_ERROR(i32 %68)
  store i32 %69, i32* %4, align 4
  br label %169

70:                                               ; preds = %61, %47
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENAMETOOLONG, align 4
  %77 = call i32 @SET_ERROR(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %169

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  store i8* null, i8** %8, align 8
  br label %166

82:                                               ; preds = %43
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %119

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp sge i64 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @ENAMETOOLONG, align 4
  %99 = call i32 @SET_ERROR(i32 %98)
  store i32 %99, i32* %4, align 4
  br label %169

100:                                              ; preds = %88
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @strncpy(i8* %101, i8* %102, i32 %108)
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = getelementptr inbounds i8, i8* %110, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  br label %165

119:                                              ; preds = %82
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 64
  br i1 %124, label %125, label %161

125:                                              ; preds = %119
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @strchr(i8* %126, i8 signext 47)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @EINVAL, align 4
  %131 = call i32 @SET_ERROR(i32 %130)
  store i32 %131, i32* %4, align 4
  br label %169

132:                                              ; preds = %125
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp sge i64 %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @ENAMETOOLONG, align 4
  %143 = call i32 @SET_ERROR(i32 %142)
  store i32 %143, i32* %4, align 4
  br label %169

144:                                              ; preds = %132
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @strncpy(i8* %145, i8* %146, i32 %152)
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = getelementptr inbounds i8, i8* %154, i64 %159
  store i8 0, i8* %160, align 1
  br label %164

161:                                              ; preds = %119
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %161, %144
  br label %165

165:                                              ; preds = %164, %100
  br label %166

166:                                              ; preds = %165, %78
  %167 = load i8*, i8** %8, align 8
  %168 = load i8**, i8*** %7, align 8
  store i8* %167, i8** %168, align 8
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %166, %141, %129, %97, %75, %67, %37, %17
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
