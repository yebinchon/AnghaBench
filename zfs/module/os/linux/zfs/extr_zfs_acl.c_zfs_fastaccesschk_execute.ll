; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_fastaccesschk_execute.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_fastaccesschk_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@ZFS_NO_EXECS_DENIED = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@zfs__fastpath__execute__access__miss = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_fastaccesschk_execute(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @B_FALSE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @crgetuid(i32* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EACCES, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %162

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ZFS_XATTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call %struct.TYPE_8__* @ZTOI(%struct.TYPE_7__* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i1 [ false, %24 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %147

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = call i32 @mutex_enter(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ZFS_NO_EXECS_DENIED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = call i32 @mutex_exit(i32* %56)
  store i32 0, i32* %3, align 4
  br label %162

58:                                               ; preds = %44
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = call %struct.TYPE_8__* @ZTOI(%struct.TYPE_7__* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @KUID_TO_SUID(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = call %struct.TYPE_8__* @ZTOI(%struct.TYPE_7__* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @KGID_TO_SGID(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65, %58
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = call i32 @mutex_exit(i32* %74)
  br label %147

76:                                               ; preds = %65
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = call %struct.TYPE_8__* @ZTOI(%struct.TYPE_7__* %78)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @KUID_TO_SUID(i32 %81)
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %76
  %85 = load i32, i32* @B_TRUE, align 4
  store i32 %85, i32* %6, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @S_IXUSR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = call i32 @mutex_exit(i32* %94)
  store i32 0, i32* %3, align 4
  br label %162

96:                                               ; preds = %84
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = call i32 @mutex_exit(i32* %98)
  br label %147

100:                                              ; preds = %76
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = call %struct.TYPE_8__* @ZTOI(%struct.TYPE_7__* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @KGID_TO_SGID(i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = call i64 @groupmember(i64 %105, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %100
  %110 = load i32, i32* @B_TRUE, align 4
  store i32 %110, i32* %7, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @S_IXGRP, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = call i32 @mutex_exit(i32* %119)
  store i32 0, i32* %3, align 4
  br label %162

121:                                              ; preds = %109
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = call i32 @mutex_exit(i32* %123)
  br label %147

125:                                              ; preds = %100
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @S_IXOTH, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = call i32 @mutex_exit(i32* %140)
  store i32 0, i32* %3, align 4
  br label %162

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142, %128, %125
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = call i32 @mutex_exit(i32* %145)
  br label %147

147:                                              ; preds = %143, %121, %96, %72, %43
  %148 = load i32, i32* @zfs__fastpath__execute__access__miss, align 4
  %149 = call i32 @DTRACE_PROBE(i32 %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = call i32 @ZTOZSB(%struct.TYPE_7__* %150)
  %152 = call i32 @ZFS_ENTER(i32 %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = load i32, i32* @ACE_EXECUTE, align 4
  %155 = load i32, i32* @B_FALSE, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @zfs_zaccess(%struct.TYPE_7__* %153, i32 %154, i32 0, i32 %155, i32* %156)
  store i32 %157, i32* %10, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = call i32 @ZTOZSB(%struct.TYPE_7__* %158)
  %160 = call i32 @ZFS_EXIT(i32 %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %147, %138, %117, %92, %54, %21
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_8__* @ZTOI(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @KUID_TO_SUID(i32) #1

declare dso_local i64 @KGID_TO_SGID(i32) #1

declare dso_local i64 @groupmember(i64, i32*) #1

declare dso_local i32 @DTRACE_PROBE(i32) #1

declare dso_local i32 @ZFS_ENTER(i32) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_7__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ZFS_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
