; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_check_inode_block_sanity.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_check_inode_block_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ext2_inode_large = type { i32 }

@EXT2_SF_WARN_GARBAGE_INODES = common dso_local global i32 0, align 4
@IBLOCK_STATUS_INSANE = common dso_local global i8 0, align 1
@IBLOCK_STATUS_CSUMS_OK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @check_inode_block_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_inode_block_sanity(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ext2_inode_large*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EXT2_SF_WARN_GARBAGE_INODES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %196

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %28, %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = udiv i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %24
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %11, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = call i8* @SCAN_BLOCK_STATUS(%struct.TYPE_7__* %53)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memset(i8* %55, i32 0, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @EXT2_INODES_PER_BLOCK(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %196

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %185, %150, %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %196

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %74 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = sdiv i64 %81, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = bitcast i8* %94 to %struct.ext2_inode_large*
  %96 = call i64 @ext2fs_inode_csum_verify(%struct.TYPE_8__* %92, i32 %93, %struct.ext2_inode_large* %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = bitcast i8* %99 to %struct.ext2_inode_large*
  store %struct.ext2_inode_large* %100, %struct.ext2_inode_large** %12, align 8
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %73
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %123

108:                                              ; preds = %73
  %109 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %12, align 8
  %110 = call i64 @extent_head_looks_insane(%struct.ext2_inode_large* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %12, align 8
  %117 = call i64 @block_map_looks_insane(%struct.TYPE_8__* %115, %struct.ext2_inode_large* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112, %108
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %119, %112
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %10, align 4
  %126 = udiv i32 %125, 2
  %127 = icmp ugt i32 %124, %126
  br i1 %127, label %128, label %165

128:                                              ; preds = %123
  %129 = load i8, i8* @IBLOCK_STATUS_INSANE, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = or i32 %136, %130
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %5, align 4
  %141 = sub i32 %140, 1
  %142 = load i32, i32* %10, align 4
  %143 = urem i32 %141, %142
  %144 = sub i32 %139, %143
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ugt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %128
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %148, %128
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = mul i32 %156, %157
  %159 = load i8*, i8** %11, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %11, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %5, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %70

165:                                              ; preds = %123
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %10, align 4
  %168 = urem i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %165
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %170
  %174 = load i8, i8* @IBLOCK_STATUS_CSUMS_OK, align 1
  %175 = sext i8 %174 to i32
  %176 = load i8*, i8** %13, align 8
  %177 = load i32, i32* %14, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = or i32 %181, %175
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %179, align 1
  br label %184

184:                                              ; preds = %173, %170
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %184, %165
  %186 = load i32, i32* %6, align 4
  %187 = add i32 %186, -1
  store i32 %187, i32* %6, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %11, align 8
  %194 = load i32, i32* %5, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %70

196:                                              ; preds = %23, %68, %70
  ret void
}

declare dso_local i8* @SCAN_BLOCK_STATUS(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @EXT2_INODES_PER_BLOCK(i32) #1

declare dso_local i64 @ext2fs_inode_csum_verify(%struct.TYPE_8__*, i32, %struct.ext2_inode_large*) #1

declare dso_local i64 @extent_head_looks_insane(%struct.ext2_inode_large*) #1

declare dso_local i64 @block_map_looks_insane(%struct.TYPE_8__*, %struct.ext2_inode_large*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
