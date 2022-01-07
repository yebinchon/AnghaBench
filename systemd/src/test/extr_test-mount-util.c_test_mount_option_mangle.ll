; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-mount-util.c_test_mount_option_mangle.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-mount-util.c_test_mount_option_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_RDONLY = common dso_local global i64 0, align 8
@MS_NOSUID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ro,nosuid,nodev,noexec\00", align 1
@MS_NODEV = common dso_local global i64 0, align 8
@MS_NOEXEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"ro,nosuid,nodev,noexec,mode=755\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mode=755\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"rw,nosuid,foo,hogehoge,nodev,mode=755\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"foo,hogehoge,mode=755\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"rw,nosuid,nodev,noexec,relatime,net_cls,net_prio\00", align 1
@MS_RELATIME = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"net_cls,net_prio\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"rw,nosuid,nodev,relatime,size=1630748k,mode=700,uid=1000,gid=1000\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"size=1630748k,mode=700,uid=1000,gid=1000\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"size=1630748k,rw,gid=1000,,,nodev,relatime,,mode=700,nosuid,uid=1000\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"size=1630748k,gid=1000,mode=700,uid=1000\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"rw,exec,size=8143984k,nr_inodes=2035996,mode=755\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"size=8143984k,nr_inodes=2035996,mode=755\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"rw,relatime,fmask=0022,,,dmask=0022\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"fmask=0022,dmask=0022\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"rw,relatime,fmask=0022,dmask=0022,\22hogehoge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mount_option_mangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mount_option_mangle() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* null, i8** %1, align 8
  %3 = load i64, i64* @MS_RDONLY, align 8
  %4 = load i64, i64* @MS_NOSUID, align 8
  %5 = or i64 %3, %4
  %6 = call i64 @mount_option_mangle(i8* null, i64 %5, i64* %2, i8** %1)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MS_RDONLY, align 8
  %12 = load i64, i64* @MS_NOSUID, align 8
  %13 = or i64 %11, %12
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = icmp eq i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i64, i64* @MS_RDONLY, align 8
  %22 = load i64, i64* @MS_NOSUID, align 8
  %23 = or i64 %21, %22
  %24 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %23, i64* %2, i8** %1)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @MS_RDONLY, align 8
  %30 = load i64, i64* @MS_NOSUID, align 8
  %31 = or i64 %29, %30
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i8*, i8** %1, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 0, i64* %2, i8** %1)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @MS_RDONLY, align 8
  %45 = load i64, i64* @MS_NOSUID, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @MS_NODEV, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* @MS_NOEXEC, align 8
  %50 = or i64 %48, %49
  %51 = icmp eq i64 %43, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i8*, i8** %1, align 8
  %55 = icmp eq i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert_se(i32 %56)
  %58 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 0, i64* %2, i8** %1)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @MS_RDONLY, align 8
  %64 = load i64, i64* @MS_NOSUID, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @MS_NODEV, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* @MS_NOEXEC, align 8
  %69 = or i64 %67, %68
  %70 = icmp eq i64 %62, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = load i8*, i8** %1, align 8
  %74 = call i32 @streq(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @assert_se(i32 %74)
  %76 = load i8*, i8** %1, align 8
  %77 = call i8* @mfree(i8* %76)
  store i8* %77, i8** %1, align 8
  %78 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 0, i64* %2, i8** %1)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* @MS_NOSUID, align 8
  %84 = load i64, i64* @MS_NODEV, align 8
  %85 = or i64 %83, %84
  %86 = icmp eq i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert_se(i32 %87)
  %89 = load i8*, i8** %1, align 8
  %90 = call i32 @streq(i8* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %91 = call i32 @assert_se(i32 %90)
  %92 = load i8*, i8** %1, align 8
  %93 = call i8* @mfree(i8* %92)
  store i8* %93, i8** %1, align 8
  %94 = load i64, i64* @MS_RDONLY, align 8
  %95 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %94, i64* %2, i8** %1)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert_se(i32 %97)
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @MS_NOSUID, align 8
  %101 = load i64, i64* @MS_NODEV, align 8
  %102 = or i64 %100, %101
  %103 = load i64, i64* @MS_NOEXEC, align 8
  %104 = or i64 %102, %103
  %105 = load i64, i64* @MS_RELATIME, align 8
  %106 = or i64 %104, %105
  %107 = icmp eq i64 %99, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert_se(i32 %108)
  %110 = load i8*, i8** %1, align 8
  %111 = call i32 @streq(i8* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i32 @assert_se(i32 %111)
  %113 = load i8*, i8** %1, align 8
  %114 = call i8* @mfree(i8* %113)
  store i8* %114, i8** %1, align 8
  %115 = load i64, i64* @MS_RDONLY, align 8
  %116 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i64 %115, i64* %2, i8** %1)
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert_se(i32 %118)
  %120 = load i64, i64* %2, align 8
  %121 = load i64, i64* @MS_NOSUID, align 8
  %122 = load i64, i64* @MS_NODEV, align 8
  %123 = or i64 %121, %122
  %124 = load i64, i64* @MS_RELATIME, align 8
  %125 = or i64 %123, %124
  %126 = icmp eq i64 %120, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert_se(i32 %127)
  %129 = load i8*, i8** %1, align 8
  %130 = call i32 @streq(i8* %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %131 = call i32 @assert_se(i32 %130)
  %132 = load i8*, i8** %1, align 8
  %133 = call i8* @mfree(i8* %132)
  store i8* %133, i8** %1, align 8
  %134 = load i64, i64* @MS_RDONLY, align 8
  %135 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i64 %134, i64* %2, i8** %1)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert_se(i32 %137)
  %139 = load i64, i64* %2, align 8
  %140 = load i64, i64* @MS_NOSUID, align 8
  %141 = load i64, i64* @MS_NODEV, align 8
  %142 = or i64 %140, %141
  %143 = load i64, i64* @MS_RELATIME, align 8
  %144 = or i64 %142, %143
  %145 = icmp eq i64 %139, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert_se(i32 %146)
  %148 = load i8*, i8** %1, align 8
  %149 = call i32 @streq(i8* %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %150 = call i32 @assert_se(i32 %149)
  %151 = load i8*, i8** %1, align 8
  %152 = call i8* @mfree(i8* %151)
  store i8* %152, i8** %1, align 8
  %153 = load i64, i64* @MS_RDONLY, align 8
  %154 = load i64, i64* @MS_NOSUID, align 8
  %155 = or i64 %153, %154
  %156 = load i64, i64* @MS_NOEXEC, align 8
  %157 = or i64 %155, %156
  %158 = load i64, i64* @MS_NODEV, align 8
  %159 = or i64 %157, %158
  %160 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i64 %159, i64* %2, i8** %1)
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert_se(i32 %162)
  %164 = load i64, i64* %2, align 8
  %165 = load i64, i64* @MS_NOSUID, align 8
  %166 = load i64, i64* @MS_NODEV, align 8
  %167 = or i64 %165, %166
  %168 = icmp eq i64 %164, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert_se(i32 %169)
  %171 = load i8*, i8** %1, align 8
  %172 = call i32 @streq(i8* %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %173 = call i32 @assert_se(i32 %172)
  %174 = load i8*, i8** %1, align 8
  %175 = call i8* @mfree(i8* %174)
  store i8* %175, i8** %1, align 8
  %176 = load i64, i64* @MS_RDONLY, align 8
  %177 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i64 %176, i64* %2, i8** %1)
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert_se(i32 %179)
  %181 = load i64, i64* %2, align 8
  %182 = load i64, i64* @MS_RELATIME, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert_se(i32 %184)
  %186 = load i8*, i8** %1, align 8
  %187 = call i32 @streq(i8* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %188 = call i32 @assert_se(i32 %187)
  %189 = load i8*, i8** %1, align 8
  %190 = call i8* @mfree(i8* %189)
  store i8* %190, i8** %1, align 8
  %191 = load i64, i64* @MS_RDONLY, align 8
  %192 = call i64 @mount_option_mangle(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i64 %191, i64* %2, i8** %1)
  %193 = icmp slt i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert_se(i32 %194)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @mount_option_mangle(i8*, i64, i64*, i8**) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i8* @mfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
