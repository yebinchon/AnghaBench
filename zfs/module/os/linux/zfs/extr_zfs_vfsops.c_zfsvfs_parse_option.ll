; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_parse_option.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@ZFS_XATTR_DIR = common dso_local global i8* null, align 8
@ZFS_XATTR_SA = common dso_local global i8* null, align 8
@ZFS_XATTR_OFF = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, %struct.TYPE_3__*)* @zfsvfs_parse_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_parse_option(i8* %0, i32 %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %151 [
    i32 132, label %11
    i32 131, label %18
    i32 129, label %25
    i32 135, label %32
    i32 143, label %39
    i32 138, label %46
    i32 145, label %53
    i32 139, label %60
    i32 144, label %67
    i32 130, label %74
    i32 128, label %81
    i32 134, label %88
    i32 146, label %95
    i32 140, label %102
    i32 133, label %109
    i32 136, label %116
    i32 141, label %123
    i32 137, label %130
    i32 142, label %137
  ]

11:                                               ; preds = %4
  %12 = load i8*, i8** @B_TRUE, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 16
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @B_TRUE, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 15
  store i8* %15, i8** %17, align 8
  br label %152

18:                                               ; preds = %4
  %19 = load i8*, i8** @B_FALSE, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 16
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @B_TRUE, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 15
  store i8* %22, i8** %24, align 8
  br label %152

25:                                               ; preds = %4
  %26 = load i8*, i8** @B_TRUE, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 14
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @B_TRUE, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 13
  store i8* %29, i8** %31, align 8
  br label %152

32:                                               ; preds = %4
  %33 = load i8*, i8** @B_FALSE, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @B_TRUE, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  br label %152

39:                                               ; preds = %4
  %40 = load i8*, i8** @B_TRUE, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 12
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @B_TRUE, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 11
  store i8* %43, i8** %45, align 8
  br label %152

46:                                               ; preds = %4
  %47 = load i8*, i8** @B_FALSE, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 12
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @B_TRUE, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 11
  store i8* %50, i8** %52, align 8
  br label %152

53:                                               ; preds = %4
  %54 = load i8*, i8** @B_TRUE, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 10
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @B_TRUE, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  br label %152

60:                                               ; preds = %4
  %61 = load i8*, i8** @B_FALSE, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 10
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @B_TRUE, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  br label %152

67:                                               ; preds = %4
  %68 = load i8*, i8** @ZFS_XATTR_DIR, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 8
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @B_TRUE, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  br label %152

74:                                               ; preds = %4
  %75 = load i8*, i8** @ZFS_XATTR_SA, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @B_TRUE, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  br label %152

81:                                               ; preds = %4
  %82 = load i8*, i8** @ZFS_XATTR_DIR, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @B_TRUE, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  br label %152

88:                                               ; preds = %4
  %89 = load i8*, i8** @ZFS_XATTR_OFF, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @B_TRUE, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  br label %152

95:                                               ; preds = %4
  %96 = load i8*, i8** @B_TRUE, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @B_TRUE, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  br label %152

102:                                              ; preds = %4
  %103 = load i8*, i8** @B_FALSE, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @B_TRUE, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  br label %152

109:                                              ; preds = %4
  %110 = load i8*, i8** @B_TRUE, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @B_TRUE, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  br label %152

116:                                              ; preds = %4
  %117 = load i8*, i8** @B_FALSE, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @B_TRUE, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %152

123:                                              ; preds = %4
  %124 = load i8*, i8** @B_TRUE, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @B_TRUE, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  br label %152

130:                                              ; preds = %4
  %131 = load i8*, i8** @B_FALSE, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @B_TRUE, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %152

137:                                              ; preds = %4
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call i32* @match_strdup(i32* %139)
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @SET_ERROR(i32 %148)
  store i32 %149, i32* %5, align 4
  br label %153

150:                                              ; preds = %137
  br label %152

151:                                              ; preds = %4
  br label %152

152:                                              ; preds = %151, %150, %130, %123, %116, %109, %102, %95, %88, %81, %74, %67, %60, %53, %46, %39, %32, %25, %18, %11
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %147
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32* @match_strdup(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
