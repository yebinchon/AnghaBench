; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_iterate_snap.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_iterate_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i32, i64, i32, i32, i8*, i8*, i32, i32, i32*, i64, i32* }

@stderr = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"skipping snapshot %s because it was created after the destination snapshot (%s)\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @send_iterate_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_iterate_snap(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @strrchr(i32 %28, i8 signext 64)
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 12
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 12
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strcmp(i32* %38, i8* %39)
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %35, %2
  %43 = phi i1 [ false, %2 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 10
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 10
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strcmp(i32* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br label %56

56:                                               ; preds = %49, %42
  %57 = phi i1 [ false, %42 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 12
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %66
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 11
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* @TEXT_DOMAIN, align 4
  %87 = call i8* @dgettext(i32 %86, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 10
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @fprintf(i32 %85, i8* %87, i32 %90, i32* %93)
  br label %95

95:                                               ; preds = %84, %79
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = call i32 @zfs_close(%struct.TYPE_8__* %96)
  store i32 0, i32* %3, align 4
  br label %216

98:                                               ; preds = %73, %66
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @nvlist_add_uint64(i32 %101, i8* %102, i64 %103)
  %105 = icmp eq i64 0, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @VERIFY(i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %98
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115, %98
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %115, %110
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %165, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 7
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8*, i8** @B_TRUE, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 7
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = call i32 @zfs_close(%struct.TYPE_8__* %139)
  store i32 0, i32* %3, align 4
  br label %216

141:                                              ; preds = %132, %127
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 7
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %146, %141
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = call i32 @zfs_close(%struct.TYPE_8__* %155)
  store i32 0, i32* %3, align 4
  br label %216

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** @B_TRUE, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 6
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %157
  br label %165

165:                                              ; preds = %164, %122
  %166 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %167 = call i64 @nvlist_alloc(i32** %10, i32 %166, i32 0)
  %168 = icmp eq i64 0, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @VERIFY(i32 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @send_iterate_prop(%struct.TYPE_8__* %171, i32 %174, i32* %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = call i64 @nvlist_add_nvlist(i32 %179, i8* %180, i32* %181)
  %183 = icmp eq i64 0, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @VERIFY(i32 %184)
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @nvlist_free(i32* %186)
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %165
  %193 = call i32* (...) @fnvlist_alloc()
  store i32* %193, i32** %14, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @lzc_get_holds(i32 %196, i32** %14)
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %192
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i32*, i32** %14, align 8
  %206 = call i64 @nvlist_add_nvlist(i32 %203, i8* %204, i32* %205)
  %207 = icmp eq i64 0, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @VERIFY(i32 %208)
  br label %210

210:                                              ; preds = %200, %192
  %211 = load i32*, i32** %14, align 8
  %212 = call i32 @fnvlist_free(i32* %211)
  br label %213

213:                                              ; preds = %210, %165
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = call i32 @zfs_close(%struct.TYPE_8__* %214)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %213, %154, %135, %95
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_8__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32, i8*, i64) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @send_iterate_prop(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @nvlist_add_nvlist(i32, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @lzc_get_holds(i32, i32**) #1

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
