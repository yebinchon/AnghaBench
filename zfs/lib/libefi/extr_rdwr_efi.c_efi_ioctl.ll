; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_ioctl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to read disk info: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DKIOCGETEFI assuming LBA %d bytes\0A\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"DKIOCGETEFI lseek error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"DKIOCGETEFI read error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"DKIOCGETEFI short read of %d bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"DKIOCSETEFI unknown LBA size\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"DKIOCSETEFI lseek error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"DKIOCSETEFI write error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"DKIOCSETEFI short write of %d bytes\0A\00", align 1
@BLKFLSBUF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"unsupported ioctl()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_3__*)* @efi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_ioctl(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @read_disk_info(i32 %15, i32* %10, i32* %11)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i64, i64* @efi_debug, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %184

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %174 [
    i32 129, label %29
    i32 128, label %95
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64, i64* @efi_debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* @DEV_BSIZE, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i32 @lseek(i32 %42, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load i64, i64* @efi_debug, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %184

61:                                               ; preds = %41
  %62 = load i32, i32* %5, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @read(i32 %62, i8* %63, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i64, i64* @efi_debug, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %184

79:                                               ; preds = %61
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i64, i64* @efi_debug, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @EIO, align 4
  store i32 %93, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %184

94:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %182

95:                                               ; preds = %27
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i64, i64* @efi_debug, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @EIO, align 4
  store i32 %105, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %184

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* @SEEK_SET, align 4
  %114 = call i32 @lseek(i32 %107, i32 %112, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %126

117:                                              ; preds = %106
  %118 = load i64, i64* @efi_debug, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @stderr, align 4
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %184

126:                                              ; preds = %106
  %127 = load i32, i32* %5, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @write(i32 %127, i8* %128, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = load i64, i64* @efi_debug, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* @stderr, align 4
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %4, align 4
  br label %184

144:                                              ; preds = %126
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load i64, i64* @efi_debug, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* @stderr, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* @EIO, align 4
  store i32 %158, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %184

159:                                              ; preds = %144
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @fsync(i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %184

166:                                              ; preds = %159
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @BLKFLSBUF, align 4
  %169 = call i32 @ioctl(i32 %167, i32 %168, i32 0)
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %184

173:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %182

174:                                              ; preds = %27
  %175 = load i64, i64* @efi_debug, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @stderr, align 4
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* @EIO, align 4
  store i32 %181, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %184

182:                                              ; preds = %173, %94
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %180, %171, %164, %157, %142, %124, %104, %92, %77, %59, %25
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @read_disk_info(i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
