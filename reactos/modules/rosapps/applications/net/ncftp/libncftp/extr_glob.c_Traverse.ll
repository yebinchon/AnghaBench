; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_Traverse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_Traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stat = type { i32, i64, i32 }
%struct.dirent = type { i8* }
%struct.TYPE_3__ = type { i8, i32*, i32*, i8*, i32, i8*, i32*, i8* }

@kDoPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not opendir %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not stat %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.Stat*, i8*, i32)* @Traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Traverse(i32 %0, i8* %1, %struct.Stat* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Stat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.Stat* %2, %struct.Stat** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = call i8* @StrDup(i8* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @StrDup(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.Stat*, %struct.Stat** %8, align 8
  %34 = getelementptr inbounds %struct.Stat, %struct.Stat* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load %struct.Stat*, %struct.Stat** %8, align 8
  %38 = getelementptr inbounds %struct.Stat, %struct.Stat* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8 100, i8* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @AddFileInfo(i32 %43, %struct.TYPE_3__* %17)
  br label %45

45:                                               ; preds = %23, %5
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %15, align 8
  store i8 47, i8* %51, align 1
  %53 = load i8*, i8** %15, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %16, align 8
  store i8 47, i8* %59, align 1
  %61 = load i8*, i8** %16, align 8
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = call i32* @opendir(i8* %62)
  store i32* %63, i32** %14, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %45
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @kDoPerror, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @Error(i32 %70, i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %192

74:                                               ; preds = %45
  br label %75

75:                                               ; preds = %184, %122, %106, %74
  %76 = load i32*, i32** %14, align 8
  %77 = call %struct.dirent* @readdir(i32* %76)
  store %struct.dirent* %77, %struct.dirent** %12, align 8
  %78 = icmp ne %struct.dirent* %77, null
  br i1 %78, label %79, label %185

79:                                               ; preds = %75
  %80 = load %struct.dirent*, %struct.dirent** %12, align 8
  %81 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %107

88:                                               ; preds = %79
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 46
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %88
  br label %75

107:                                              ; preds = %100, %94, %79
  %108 = load i8*, i8** %15, align 8
  %109 = load %struct.dirent*, %struct.dirent** %12, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcpy(i8* %108, i8* %111)
  %113 = load i8*, i8** %16, align 8
  %114 = load %struct.dirent*, %struct.dirent** %12, align 8
  %115 = getelementptr inbounds %struct.dirent, %struct.dirent* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcpy(i8* %113, i8* %116)
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.Stat*, %struct.Stat** %8, align 8
  %120 = call i64 @Lstat(i8* %118, %struct.Stat* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %107
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @kDoPerror, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @Error(i32 %123, i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  br label %75

127:                                              ; preds = %107
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 47
  br i1 %133, label %140, label %134

134:                                              ; preds = %127
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 92
  br label %140

140:                                              ; preds = %134, %127
  %141 = phi i1 [ true, %127 ], [ %139, %134 ]
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %128, i64 %144
  %146 = call i8* @StrDup(i8* %145)
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  store i8* %146, i8** %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  store i32* null, i32** %148, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = call i8* @StrDup(i8* %149)
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i8* %150, i8** %151, align 8
  %152 = load %struct.Stat*, %struct.Stat** %8, align 8
  %153 = getelementptr inbounds %struct.Stat, %struct.Stat* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 %154, i32* %155, align 8
  %156 = load %struct.Stat*, %struct.Stat** %8, align 8
  %157 = getelementptr inbounds %struct.Stat, %struct.Stat* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i8* %159, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32* null, i32** %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32* null, i32** %162, align 8
  %163 = load %struct.Stat*, %struct.Stat** %8, align 8
  %164 = getelementptr inbounds %struct.Stat, %struct.Stat* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i64 @S_ISREG(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %140
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8 45, i8* %170, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @AddFileInfo(i32 %171, %struct.TYPE_3__* %17)
  br label %184

173:                                              ; preds = %140
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @S_ISDIR(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* %6, align 4
  %179 = load i8*, i8** %7, align 8
  %180 = load %struct.Stat*, %struct.Stat** %8, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = load i32, i32* %10, align 4
  call void @Traverse(i32 %178, i8* %179, %struct.Stat* %180, i8* %181, i32 %182)
  br label %183

183:                                              ; preds = %177, %173
  br label %184

184:                                              ; preds = %183, %169
  br label %75

185:                                              ; preds = %75
  %186 = load i8*, i8** %15, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -1
  store i8 0, i8* %187, align 1
  %188 = load i8*, i8** %16, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 -1
  store i8 0, i8* %189, align 1
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @closedir(i32* %190)
  br label %192

192:                                              ; preds = %185, %65
  ret void
}

declare dso_local i8* @StrDup(i8*) #1

declare dso_local i32 @AddFileInfo(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @Error(i32, i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @Lstat(i8*, %struct.Stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
