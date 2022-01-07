; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_handle_one.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_handle_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to open %s: %s\0A\00", align 1
@ZFS_IOC_FSGETXATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get xattr for %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%5u %c %s\0A\00", align 1
@ZFS_PROJINHERIT_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s - project ID is not set properly (%u/%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s - project inherit flag is not set\0A\00", align 1
@ZFS_DEFAULT_PROJID = common dso_local global i32 0, align 4
@ZFS_IOC_FSSETXATTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to set xattr for %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @zfs_project_handle_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_project_handle_one(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_NOCTTY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %198

27:                                               ; preds = %21, %17
  %28 = load i32, i32* @stderr, align 4
  %29 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* @errno, align 8
  %32 = call i8* @strerror(i64 %31)
  %33 = call i32 @fprintf(i32 %28, i8* %29, i8* %30, i8* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %198

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ZFS_IOC_FSGETXATTR, align 4
  %38 = call i32 @ioctl(i32 %36, i32 %37, %struct.TYPE_5__* %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @stderr, align 4
  %43 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = call i8* @strerror(i64 %45)
  %47 = call i32 @fprintf(i32 %42, i8* %43, i8* %44, i8* %46)
  br label %194

48:                                               ; preds = %35
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %178 [
    i32 129, label %52
    i32 131, label %64
    i32 130, label %113
    i32 128, label %144
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 80, i32 45
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %61, i8* %62)
  br label %194

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %194

78:                                               ; preds = %71, %64
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  store i8 0, i8* %9, align 1
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %9, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 %86)
  br label %194

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %95, %88
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %103
  br label %194

113:                                              ; preds = %48
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ZFS_DEFAULT_PROJID, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %119
  br label %194

130:                                              ; preds = %124, %113
  %131 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %132 = xor i32 %131, -1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %130
  %141 = load i32, i32* @ZFS_DEFAULT_PROJID, align 4
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %130
  br label %180

144:                                              ; preds = %48
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156, %151
  br label %194

163:                                              ; preds = %156, %144
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %166, i32* %167, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load i32, i32* @ZFS_PROJINHERIT_FL, align 4
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %163
  br label %180

178:                                              ; preds = %48
  %179 = call i32 @ASSERT(i32 0)
  br label %180

180:                                              ; preds = %178, %177, %143
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @ZFS_IOC_FSSETXATTR, align 4
  %183 = call i32 @ioctl(i32 %181, i32 %182, %struct.TYPE_5__* %6)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load i32, i32* @stderr, align 4
  %188 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i8*, i8** %4, align 8
  %190 = load i64, i64* @errno, align 8
  %191 = call i8* @strerror(i64 %190)
  %192 = call i32 @fprintf(i32 %187, i8* %188, i8* %189, i8* %191)
  br label %193

193:                                              ; preds = %186, %180
  br label %194

194:                                              ; preds = %193, %162, %129, %112, %83, %77, %52, %41
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @close(i32 %195)
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %27, %26
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
